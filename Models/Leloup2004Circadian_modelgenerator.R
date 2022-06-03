# Leloup2004Circadian
# Loads model from Biomodels (975) from the publication Leloup 2004:
# Model of: Modeling the mammalian circadian clock: sensitivity analysis and multiplicity of oscillatory mechanisms..  
# Generates .xml (SBML) and .cps (Copasi-File) to use later
# Created on 2022-05-02. Last modified on 
# Known issues: 


#### Initial setup
library(CoRC)


#### Load Model
loadSBML("https://www.ebi.ac.uk/biomodels/model/download/BIOMD0000000975.5?filename=Leloup2004_Set1.xml")


########### Saving and Exporting the Model

### Saving model as SBML file
saveSBML(filename = "Leloup2004Circadian_model.xml",
         level = 3,
         version = 2,
         overwrite = TRUE,
         model = getCurrentModel())

### Saving model as .cps file
saveModel(filename = "Leloup2004Circadian_model.cps",
          overwrite = TRUE,
          model = getCurrentModel())

### Unloading all models to free memory
unloadAllModels()
