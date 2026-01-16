library(carData)

# load the Prestige dataset from carData pacakge. The dataset has variables 
# for regression analysis to understand social stratification
data("Prestige")

# save raw data
save(Prestige, file = here::here("data", "raw.Rdata"))
