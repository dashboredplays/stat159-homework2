library(tidyverse)

raw <- paste(readLines("data/SerenaWilliamsCareer.js", warn = FALSE), collapse = "")

rows <- regmatches(raw, gregexpr("\\[[^][]*\\]", raw))[[1]] # find start position and length of a pattern using gregexpr
mat <- do.call(rbind, lapply(rows, function(r)gsub("\"", "", regmatches(r, gregexpr("\"[^\"]*\"", r))[[1]]))) # sub globally all quoted items with non quotes

serena <- data.frame(
  date       = as.Date(mat[, 1], "%Y%m%d"),
  tournament = mat[, 2],
  surface    = mat[, 3],
  result     = mat[, 5],
  opponent   = mat[, 12],
  opp_dob    = as.Date(mat[, 17], "%Y%m%d")
)
serena$serena_age <- as.numeric(serena$date - as.Date("1981-09-26")) / 365.25 # include the .25 because there's leap years
serena$opp_age <- as.numeric(serena$date - serena$opp_dob) / 365.25

write.csv(serena, "data/serena.csv", row.names = FALSE)