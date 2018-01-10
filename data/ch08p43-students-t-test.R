# prepares one sample student's t-test data

library(here)

here::here()

dat_studentt_one <- read.csv("data-raw/ch08p43-students-t-test.csv", header = TRUE, stringsAsFactors = FALSE)

save(dat_studentt_one, file = "data/studentt_one.rdata")
