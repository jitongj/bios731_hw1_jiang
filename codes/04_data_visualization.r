load(here::here("data", "clean.Rdata"))


library(tidyverse)
library(ggplot2)

plot1 <- ggplot(Prestige, aes(x = education, y = income)) +
  geom_point() +
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title = "Income vs Education",
    x = "Average years of education",
    y = "Average income"
  )

plot2 <- ggplot(Prestige, aes(x = women, y = income)) +
  geom_point() +
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title = "Income vs Percentage of Women",
    x = "Percentage of women",
    y = "Average income"
  )
