#' Run a Sensitivity analysis
#'
#' \code{runSensitivities} runs a sensitivity analysis
#'
#' The \href{https://jpahle.github.io/CoRC/articles/task_management.html}{online article on managing tasks} provides some further context.
#'
#' @param model A model object. Preset to the current model
#' @param delta_factor The delta factor
#' @param delta_minimum Delta minimum
#' @param subtask The subtask
#' @param effect The effect
#' @param cause The cause
#' @param secondary_cause secondarycause
#' @param update_model wether or not the model should be updated
#' @param executable No idea what this does
#' @param effect_object Object if effect is "SINGLE_OBJECT"
#' @param cause_object Object if cause is "SINGLE_OBJECT"
#' @param seccause_object Object if secondary cause is "SINGLE_OBJECT"
#' @return A list of results.
#' \itemize{
#'   \item \code{$result} is a data frame containing things
#' }
#' \strong{Attention}: I have no idea what I am doing. I am just adapting the \code{runTimeCourse()} 
#' document and guessing a bit along the way.
#' @family Sensitivities
#' @export
#' 
#' 
#' 
#' 
#' 
#' 
#' 



########## UTILS

enum_effect <- names(.__E___CObjectLists__ListType)[c(1, 2, 44, 8, 9, 18, 19, 27, 23, 46, 47)]
enum_cause  <- names(.__E___CObjectLists__ListType)[c(1, 2, 41, 42, 4)]




#########
runSensitivities <- function(model           = getCurrentModel(), 
                             delta_factor    = 0.001, 
                             delta_minimum   = 1E-12, 
                             subtask         = NULL,      
                             effect          = NULL, 
                             cause           = NULL, 
                             secondary_cause = NULL,
                             update_model    = FALSE, 
                             executable      = NULL,
                             effect_object   = NULL, 
                             cause_object    = NULL, 
                             seccause_object = NULL, ...){
  c_datamodel <- assert_datamodel(model)
  c_model     <- c_datamodel$getModel()
  # do assertions:
  # assemble settings 
  settings <- sens_assemble_settings(
    subtask         = subtask,
    effect          = effect,
    cause           = cause,
    secondary_cause = secondary_cause,
    update_model    = update_model,
    executable      = executable,
    effect_object   = effect_object,
    cause_object    = cause_object,
    seccause_object = seccause_object
  )
  # make a task
  c_task <- as(c_datamodel$getTask("Sensitivities"), "_p_CSensTask") # keine Ahnung ob das stimmt...
  # make method settings
  method_settings <- sens_assemble_method(delta_factor, delta_minimum)
  

  
  # try to avoid doing changes for performance reasons
  do_settings <- !is_empty(settings)
  do_method   <- !is_empty(method_settings)
  

  tryCatch({
    # save all previous settings
    if (do_settings)
      pre_settings <- sens_get_settings(c_task, cause_object, seccause_object, effect_object)
    if (do_method) {
      # keep track of the originally set method
      pre_method <- c_task$getMethod()$getSubType()
      # change the method first, then save the settings for the new method
      if (!is.null(method_settings$method))
        c_task$setMethodType(method_settings$method)
        c_method            <- as(c_task$getMethod(), "_p_CSensMethod")
        pre_method_settings <- get_method_settings(c_method, with_name = TRUE)
     } else {
      c_method <- as(c_task$getMethod(), "_p_CSensMethod")
    }

    
    # apply settings
    if (do_settings)
      sens_set_settings(settings, c_task, c_datamodel)
    if (do_method)
      set_method_settings(method_settings, c_method)
    
    
    compile_and_check(c_model)
    
    # initialize task
    assert_that(
      grab_msg(c_task$initializeRaw("OUTPUT_SE")),
      msg = "Initializing the task failed."
    )
    
    # run task
    process_task(c_task) 

    # get results
    ret <- sens_get_results(c_task, cause_object, seccause_object, effect_object)


  },
  finally = {
    # revert all settings
    if (do_settings)
      sens_set_settings(pre_settings, c_task)
    if (do_method) {
      set_method_settings(pre_method_settings, c_method)
      c_task$setMethodType(pre_method)
    }
  }
  )
  ret
}

sens_assemble_method <- function(delta_factor, delta_minimum){
  # assembles all method parameters
  assert_that(
    is.number(delta_factor) && is.number(delta_minimum),
    msg = "delta_factor and delta_minimum must be numbers."
  )
  method <- list(method        = "sensMethod",
                 delta_factor  = delta_factor, 
                 delta_minimum = delta_minimum)
  
  method
}

sens_assemble_settings <- function(subtask, effect, cause, secondary_cause, 
                                   update_model, executable, effect_object, 
                                   cause_object, seccause_object){
  # assembles all parameters and does assertions
  assert_that(
    is.null(subtask)         || is.string(subtask),
    is.null(effect)          || is.string(effect),
    is.null(cause)           || is.string(cause),
    is.null(secondary_cause) || is.string(secondary_cause),
    is.null(update_model)    || is.flag(update_model)       && noNA(update_model),
    is.null(executable)      || is.flag(executable)         && noNA(executable)
  )
  
  if (!is.null(subtask)) {
    subtask <- rlang::arg_match(subtask, names(.__E___CSensProblem__SubTaskType))
  }
  
  
  if (!is.null(effect)){
    effect  <- rlang::arg_match(effect, enum_effect)
  }
  
  if(!is.null(cause)){
    cause   <- rlang::arg_match(cause, enum_cause)
  }
  
  if(!is.null(secondary_cause)){
    secondary_cause <- rlang::arg_match(secondary_cause, enum_cause)
  }
  
  
  settings <- list(
    subtask         = subtask,
    effect          = effect,
    cause           = cause,
    secondary_cause = secondary_cause,
    update_model    = update_model,
    executable      = executable,
    seccause_object = seccause_object,
    cause_object    = cause_object,
    effect_object   = effect_object
  ) 
}

sens_set_settings <- function(settings, c_task, c_datamodel){
  # sets settings for analysis 
  c_problem <- as(c_task$getProblem(), "_p_CSensProblem")
  c_problem$removeVariables()
  
  if(is_empty(settings)){
    return()
  }
  
  # set subtask
  if (!is.null(settings$subtask)){
    c_problem$setSubTaskType(settings$subtask)
  }
  
  # set effect
  if (!is.null(settings$effect)){
    c_item <- c_problem$getTargetFunctions()
    if (!settings$effect == "SINGLE_OBJECT"){
      c_item$setListType(lt = settings$effect)
    } else{
      so <- c_datamodel$findObjectByDisplayName(settings$effect_object)$getCN()
      c_item$setSingleObjectCN(so)
    }
    c_problem$setTargetFunctions(item = c_item)
  }
  
  
  empty_item <- CSensItem()
  empty_item$setListType(lt = "EMPTY_LIST")
  
  #set cause
  if(!is.null(settings$cause)){
    c_item <- CSensItem()
    if(settings$cause != "SINGLE_OBJECT"){
      c_item$setListType(lt = settings$cause)
    } else{
      so <- c_datamodel$findObjectByDisplayName(settings$cause_object)$getCN()
      c_item$setSingleObjectCN(so)
    }
    c_problem$changeVariables(index = 0, item = c_item)
  } else{
    c_problem$changeVariables(index = 0, item = empty_item)
  }
  
  # set secondary cause
  if(!is.null(settings$secondary_cause)){
    c_item <- CSensItem()
    if(settings$secondary_cause != "SINGLE_OBJECT"){
      c_item$setListType(lt = settings$secondary_cause)
    } else{
      so <- c_datamodel$findObjectByDisplayName(settings$seccause_object)$getCN()
      c_item$setSingleObjectCN(so)
    }
    c_problem$changeVariables(index = 1, item = c_item)
  } else{
    c_problem$changeVariables(index = 1, item = empty_item)
  }
  
  # set update model
  if (!is.null(settings$update_model)){c_task$setUpdateModel(settings$update_model)}
  

}

sens_get_settings <- function(c_task, cause_object, seccause_object, effect_object){
  # retrieves the settings
  
  c_method  <- c_task$getMethod()
  method    <- get_method_settings(c_method)
  c_problem <- as(c_task$getProblem(), "_p_CSensProblem")
  c_effect  <- c_problem$getTargetFunctions()
  c_cause   <- c_problem$getVariables(index = 0)
  c_second  <- c_problem$getVariables(index = 1)
  
  if(c_effect$isSingleObject()){
    effect  <- c_effect$getSingleObjectCN()$getObjectName()
  }
  else{
    effect  <- c_effect$getListType()
  }
  
  if(c_cause$isSingleObject()){
    cause   <- c_cause$getSingleObjectCN()$getObjectName()
  }
  else{
    cause   <- c_cause$getListType()
  }
  
  if(c_second$isSingleObject()){
    second  <- c_second$getSingleObjectCN()$getObjectName()
  }
  else{
    second  <- c_second$getListType()
  }
  
  list(
    delta_factor    = method$delta_factor,
    delta_minimum   = method$delta_minimum,
    subtask         = c_problem$getSubTaskType(),
    effect          = effect,
    cause           = cause,
    secondary_cause = second,
    update_model    = as.logical(c_task$isUpdateModel()),
    executable      = as.logical(c_task$isScheduled()),
    cause_object    = cause_object,
    seccause_object = seccause_object,
    effect_object   = effect_object
  )
}


sens_get_results <- function(c_task, cause_object, seccause_object, effect_object){
  # gets the results
  c_problem   <- as(c_task$getProblem(), "_p_CSensProblem")
  c_method    <- as(c_task$getMethod(),  "_p_CSensMethod")
  c_result    <- c_problem$getResultAnnotated()
  
  settings    <- sens_get_settings(c_task, cause_object, seccause_object, effect_object)
  result_size <- get_result_size(c_result)

  main <- list(
    result                     = read_COPASIArray(c_problem$getResult(),          
                                                  size = result_size),
    annotated_result           = read_COPASIArray(c_problem$getResultAnnotated(), 
                                                  size = result_size, annotate = TRUE),
    scaled_result              = read_COPASIArray(c_problem$getScaledResult(),    
                                                  size = result_size),
    annotated_scaled_result    = read_COPASIArray(c_problem$getScaledResultAnnotated(), 
                                                  size = result_size, annotate = TRUE)

  )
  if (length(result_size) > 1){
    main <- append(main, list(
    collapsed_result           = read_COPASIArray(c_problem$getCollapsedResult(),
                                                  size = c(result_size[2],1)),
    annotated_collapsed_result = read_COPASIArray(c_problem$getCollapsedResultAnnotated(),
                                                  size = c(result_size[2],1), annotate = TRUE)
    ))
  }
  
  list(
    settings = settings,
    main     = main
  )
}

read_COPASIArray <- function(c_array, size, annotate = FALSE){
  # reads the results and annotates them
  if (length(size)>1){
    if (annotate == TRUE){
      row_names <- c()
      rowarray  <- c_array$getAnnotationsString(d = 0)
      
      for (i in 1:size[1]){
        row_names[i] <- rowarray[i]
      }
      
      if (size[2] != 1){
        col_names <- c()
        colarray  <- c_array$getAnnotationsString(d = 1)
        for (i in 1:size[2]){
          col_names[i] <- colarray[i]
        }
      } else{
        col_names <- c("Value")
      }
      c_array <- c_array$getArray()
    }
    
    ret_matrix <- matrix(nrow = size[1], ncol = size[2])
    for (i in 0:(size[1]-1)){
      for (j in 0:(size[2]-1)){
        ret_matrix[i+1,j+1] <- CArrayInterface_get__SWIG_1(c_array, index1 = i, index2 = j)
      }
    }
    
    if(annotate == TRUE){
      rownames(ret_matrix) <- row_names
      colnames(ret_matrix) <- col_names
    }
  } else{
      if (annotate == TRUE){
        row_names <- c()
        rowarray  <- c_array$getAnnotationsString(d = 0)
        
        for (i in 1:size[1]){
          row_names[i] <- rowarray[i]
        }
        c_array <- c_array$getArray()
      }
      ret_matrix <- matrix(nrow = size[1], ncol = 1)
      for (i in 0:(size-1)){
        ret_matrix[i+1] <- CArrayInterface_get__SWIG_1(c_array, index1 = i, index2 = 0)
      }
      if(annotate == TRUE){
        rownames(ret_matrix) <- row_names
        colnames(ret_matrix) <- "Single Object"
      }
  }
  return(ret_matrix)
}


get_result_size <- function(c_result){
  # returns size of result
  dim      <- c_result$dimensionality()
  sizevec <- c()
  for (i in 0:(dim-1)){
    sizevec[i+1] <- c_result$getAnnotationsString(d = i)$size()
  }
  return(sizevec)
}


