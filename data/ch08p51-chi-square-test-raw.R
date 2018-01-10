# prepares chi-square test data in raw form

library(here)

here::here()

dat_chisq_raw <- read.csv("data-raw/ch08p51-chi-square-test-raw.csv", header = TRUE, stringsAsFactors = FALSE)

save(dat_chisq_raw, file = "data/chisq_raw.rdata")
