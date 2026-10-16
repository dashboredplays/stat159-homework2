library(tidyverse)
library(ggplot2)

dat <- read.csv("data/serena.csv")

p <- ggplot(dat, aes(x = serena_age, y = serena_age - opp_age, color = result)) + 
  geom_point() +
  scale_color_manual(
    name   = "Result",
    values = c("W" = "skyblue", "L" = "purple"),
    labels = c("L" = "Match Williams won", "W" = "Match lost")
  ) +
  labs(title = "Serena Williams's Professional Matches, Age 14 to 40", 
      x = "Williams's age", y = "Opponent Age Difference") +
  theme_bw()

ggsave("outputs/serena_graph.png", p, width = 10, height = 6)