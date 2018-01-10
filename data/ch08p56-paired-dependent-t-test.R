# prepares dependent samples (paired) student's t-test data

library(here)

here::here()

dat_studentt_dep <- read.csv("data-raw/ch08p56-paired-dependent-t-test.csv", header = TRUE, stringsAsFactors = FALSE)

save(dat_studentt_dep, file = "data/studentt_dep.rdata")
