load(here::here("data", "clean.Rdata"))


library(tidyverse)

# divide the data into 5 groups based on quantile of women value
Prestige <- Prestige %>%
  mutate(
    women_group = ntile(women, 5)
  )


# analyze the data for each women group
Prestige_table <- Prestige %>%
  group_by(women_group) %>%
  summarize(
    women_median = median(women),
    edu_median = median(education),
    income_median = median(income),
    occupations = paste(occupation, collapse = ", "),
    .groups = "drop"
  )


fit_lm <- function(data, model) {
  lm(model, data = data)
}


income_lm <- fit_lm(
  data = Prestige,
  model = income ~ education + women
)

save(Prestige_table, income_lm, file = here::here("data", "analysis.Rdata"))



