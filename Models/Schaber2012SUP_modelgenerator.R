# Schaber 2012 Sup.
# Model Source code of Schaber 2012 (Supplements): Easy Parameter Identifiability with Copasi
# Model of:
# Generates .xml (SBML) and .cps (Copasi-File) to use later
# Created on 2022-02-07. Last modified on 2022-02-07
# Known issues: 
## - what exactly are species T and Tp?
## - cannot Create kinetic function as I cannot unload it


### Initial Setup
library(CoRC)

### Model Creation

# Model Setup
newModel()
setModelName("Schaber2012SUP")
# newKineticFunction("mod. MA",
                  # "k * inh * sub",
                  # parameters = list(sub = "substrate", inh = "modifier")) # create new Kinetic function needed for model

# Species
newSpecies("S", # Decaing Signal S
           type = c("assignment"), 
           expression = "exp(-0.5*{Time})",
           initial_concentration = 1) 
newSpecies("T", # Was ist das eigentlich
           initial_concentration = 1)
newSpecies("Tp", # und was ist das?
           initial_concentration = 0)

# Reactions
newReaction("T -> Tp; S", # Formation of Tp from T, inhibited by S
            fun = "mod. MA")
newReaction("Tp -> T") # Formation of T from Tp

# Parameters
k1 <- 0.1 # not actual parametervalue, needs to be found by parameter estimation
k2 <- 0.1 # not actual parametervalue, needs to be found by parameter estimation

parameter_values <- c(k1, k2)
setParameters(key = parameter(), value = parameter_values)

# Global Quantities for Scaling
newGlobalQuantity("TpFit", 
                  type = "assignment",
                  expression = "{[Tp]} / 0.5")



########### Saving and Exporting the Model

### Saving model as SBML file
saveSBML(filename = "Schaber2012SUP_model.xml",
         level = 3,
         version = 2,
         overwrite = TRUE,
         model = getCurrentModel())

### Saving model as .cps file
saveModel(filename = "Schaber2012SUP_model.cps",
          overwrite = TRUE,
          model = getCurrentModel())

### Unloading all models to free memory
unloadAllModels()
loadSBML("Zimmer2014_model.xml")
