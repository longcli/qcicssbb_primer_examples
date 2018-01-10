# prepares independent samples (two sample) student's t-test data

library(here)

here::here()

dat_studentt_indep <- read.csv("data-raw/ch08p54-two-sample-t-test.csv", header = TRUE, stringsAsFactors = FALSE)

save(dat_studentt_indep, file = "data/studentt_indep.rdata")
