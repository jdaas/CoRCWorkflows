#' Run parameter estimation
#'
#' \code{runParameterEstimation} runs parameter estimation and returns the results in a list.
#'
#' The \href{https://jpahle.github.io/CoRC/articles/task_management.html}{online article on managing tasks} provides some further context.
#'
#' @param model a model object
#' 
#' Parameters for Profile Likelihood
#' @param pl_parameters cor_opt_parm or list of corc_opt_parm
#' See also \code{\link{defineParameterEstimationParameter}}.
#' @param max_steps Maximum number of steps, as number or vector of length of pl_parameters
#' 
#' Parameters for Parameter Estimation
#' @param pe_parameters corc_opt_parm or list of corc_opt_parm objects
#' @param pe_experiments copasi_exp or list of copasi_exp objects
#' @param pe_method List of Parameter estimation method
#' @param pe_update_model flag
#' @param pe_randomize_start_values flag
#' See also \code{\link{defineExperiments}}.
#' @eval rox_method_param("Parameter Estimation", "_p_CFitTask")
#' @return A list of results.
#' @family profile likelihood
#' @export
#' 
#' 
runProfileLikelihood   <- function(
    model                     = getCurrentModel(), # which model the evaluations are made on
    pl_parameters             = NULL,
    max_steps                 = 20,
    pe_parameters             = NULL,
    pe_experiments            = NULL,
    pe_method                 = NULL,
    pe_update_model           = FALSE,
    pe_randomize_start_values = NULL){
  

  ## Some housekeeping
  pre_model  <- saveModelToString()
  pl_model   <- loadModelFromString(saveModelToString(model))
  pre_method <- getParameterEstimationSettings()

  pl_model
  
  if (length(max_steps) != length(pl_parameters)){
    max_steps <- rep(max_steps, length(pl_parameters))
  }
  
  ## Set up output
  PL_result <- list("settings" = list("settings"),
                    "main" = list())
  tryCatch({
  ## Loop multiple profile likelihood parameters
  for (i in 1:length(pl_parameters)){
    # Set up output
    PL_profile <- tibble("parameter_name"  = character(), 
                         "parameter_value" = numeric(), 
                         "objective_value" = numeric())
    
    # Create some progress output 
    if (length(pl_parameters) > 1){
      print(paste0("Creating profile of parameter ", pl_parameters[[i]]$ref))}
    
    PL_parm      <- pl_parameters[i]
    measurements <- seq(pl_parameters[[i]]$lower,
                        pl_parameters[[i]]$upper,
                        length.out = max_steps[i])
    
    ## Run multiple profile likelihood estimations and record objective value
    pe_parms <- pe_parameters
    pe_parms[which(sapply(pe_parms, function(x) PL_parm[[1]]$ref %in% x))] <- NULL
    for (measurement in measurements){
      PL_parm_name <- substring(PL_parm[[1]]$ref, 2, (nchar(PL_parm[[1]]$ref)-1))
      if(!grepl("InitialValue", PL_parm_name, fixed = TRUE)){
        setParameters(key = PL_parm_name, value = measurement)
      } else{
        key <- substr(PL_parm_name, 1, (nchar(PL_parm_name)-13))
        setGlobalQuantities(key = key, initial_value = measurement)
        
    }
    tryCatch({
      PE_result <- runParameterEstimation(
        parameters             = pe_parms,
        create_parameter_sets  = FALSE,
        update_model           = pe_update_model,
        experiments            = pe_experiments,
        method                 = pe_method,
        randomize_start_values = pe_randomize_start_values,
        model                  = pl_model
                             )
      
      PL_profile   <- add_row(PL_profile, 
                              "parameter_name"  = PL_parm[[1]]$ref,
                              "parameter_value" = measurement, 
                              "objective_value" = PE_result$main$objective_value)
      }, 
      error = function(e){
        print("error")
        PL_profile <<- add_row(PL_profile,
                          "parameter_name"  = PL_parm[[1]]$ref,
                          "parameter_value" = measurement,
                          "objective_value" = NA)})
      
      
    }
    PL_result$main[[i]] <- PL_profile
  }
  }, 
  finally = {
    # revert settings
    clearParameterEstimationParameters()
    rm(PL_profile)
    loadModelFromString(pre_model)
  })
  return(PL_result)
}

#' Autoplot the Likelihood Profile
#' 
#' @param PL_result, result of the function \code{link{runProfileLikelihood}}
#' @param ... additional parameters to give ggplot()
#' @seealso \code{\link{defineParameterEstimationParameter}}
#' @export
printLikelihoodProfile <- function(PL_result, ...){
  plot     <- PL_result$main
  no_plots <- length(plot)
  res <- list()
  for (i in 1: no_plots){
    parameter_name <- plot[[i]]$parameter_name[1]
    header <- substring(parameter_name, 2, (nchar(parameter_name)-1))
    xlabel <- paste0("Value of ", header)
    ylabel <- "Objective value"
    res1 <-  ggplot(plot[[i]], aes(x = parameter_value, y = objective_value))+
      geom_line()+
      labs(x = xlabel,
           y = ylabel)
    res <- append (res, list(res1))
  }
  return(res)
}
