# prepares contingency table data

library(here)

here::here()

dat_contingency <- read.csv("data-raw/ch08p78-contingency-table.csv", header = TRUE, stringsAsFactors = FALSE)

save(dat_contingency, file = "data/contingency.rdata")
