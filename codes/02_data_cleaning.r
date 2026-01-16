# load raw data
load(here::here("data", "raw.Rdata"))
library(tidyverse)

type_to_keep = "prof"

# grab only observations from the specified type and 
# include columns we are interested in

Prestige <- Prestige %>%
  rownames_to_column(var = "occupation") %>%
  filter(type == type_to_keep) %>%
  select(occupation, education, income, women) %>%
  drop_na()


## save tidied data object and date data was accessed
save(Prestige, file = here::here("data", "clean.Rdata"))
