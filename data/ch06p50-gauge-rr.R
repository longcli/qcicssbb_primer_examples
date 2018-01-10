# prepares gauge R&R example data

library(here)

here::here()

dat_grr <- read.csv("data-raw/ch06p50-gauge-rr.csv", header = TRUE, stringsAsFactors = FALSE)

save(dat_grr, file = "data/gauge-rr.rdata")
