# prepares simple linear regression data

library(here)

here::here()

dat_slr <- read.csv("data-raw/ch08p03-simple-linear-regression.csv", header = TRUE, stringsAsFactors = FALSE)

save(dat_slr, file = "data/simple-linear-regression.rdata")
