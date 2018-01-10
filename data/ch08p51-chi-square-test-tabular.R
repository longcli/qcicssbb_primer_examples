# prepares chi-square test data in tabular form

library(here)

here::here()

dat_chisq_tabular <- read.csv("data-raw/ch08p51-chi-square-test-tabular.csv", header = TRUE, stringsAsFactors = FALSE)

save(dat_chisq_tabular, file = "data/chisq_tabular.rdata")
