# prepares manova data

library(here)

here::here()

dat_est <- read.csv("data-raw/ch08p36-estimators.csv", header = FALSE, stringsAsFactors = FALSE)

save(dat_est, file = "data/estimators.rdata")
