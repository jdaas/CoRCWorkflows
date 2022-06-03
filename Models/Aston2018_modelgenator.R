# Aston 2018
# Model loading of Aston 2018
# Model of: Hepatitis C infection
# Publication: A New Model for the Dynamics of Hepatitis C Infection: Derivation, Analysis and Implications.
# Generates .xml (SBML) and .cps (Copasi-File) to use later
# Created on 2022-05-03
# Known issues: 


# Initial Setup
library(CoRC)

# Model loading
loadSBML("https://www.ebi.ac.uk/biomodels/model/download/BIOMD0000000713.8?filename=PVR.xml")

params <- matrix(nrow = 8, ncol = 4, data = c(  
                    #PVR
                    c(1.1178E-1, 
                     1.0645E4, 
                     1.9927E-3, 
                     3.0078E1,
                     5.8954E1,
                     8.3376E-9,
                     2.0396E2,
                     1.7908E1),
                    # Breakthrough
                    c(1.5104E-4,
                      2.8556E4,
                      2.9890E-3,
                      1.1686E3,
                      5.7302E2,
                      7.1149E-9,
                      9.4025E1,
                      3.3659),
                    # Null response
                    c(4.6260E-3,
                      1.2920E6,
                      3.8518E-2,
                      2.6011,
                      1.1064,
                      1.9493E-7,
                      3.4868E-2,
                      2.7784E-4),
                    # Triphasic
                    c(
                      3.1259E-3,
                      1.1149E2,
                      1.7882E-2,
                      2.0350E-1,
                      1.0962E1,
                      3.3281E-8,
                      1.1646E3,
                      1.4294)
                    )
            )
  

rownames(params) <- c("s", "rtTmax", 
                      "rtD", "R", 
                      "D", "bstar",
                      "pstar", "c")
colnames(params) <- c("PVR", "Breakthrough",
                      "NullResponse", "Triphasic")

start <- matrix(data = c(
                  # T()
                  c(3.3246,
                    8.2935E6,
                    1.7755E4,
                    1.9948),
                  # I()
                  c(4.1752E5,
                    9.588E3,
                    1.4523E6,
                    1.0355E2)),
                ncol = 4, nrow = 2,
                byrow = TRUE)

rownames(start) <- c("T0", "I0")
colnames(start) <- c("PVR", "Breakthrough",
                     "NullResponse", "Triphasic")



########### Saving and Exporting the Models

for(i in 1:4){
  ### Saving model as SBML file
  setGlobalQuantities(key = getGlobalQuantities()$key, 
                      initial_value = params[,i])
  setSpecies(key = species(), initial_concentration = c(start[,i],0))
  
  saveSBML(filename = paste0("Aston2018",colnames(start)[i], "_model.xml"),
           level = 3,
           version = 2,
           overwrite = TRUE,
           model = getCurrentModel())
  
  ### Saving model as .cps file
  saveModel(filename = paste0("Aston2018",colnames(start)[i],"_model.cps"),
            overwrite = TRUE,
            model = getCurrentModel())
  
  
}



### Unloading all models to free memory
unloadAllModels()
