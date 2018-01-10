# prepares pareto data in tabular form

library(here)

here::here()

dat_pareto_tabular <- read.csv("data-raw/ch08p112-pareto-tabular.csv", header = TRUE, stringsAsFactors = FALSE)

save(dat_pareto_tabular, file = "data/pareto_tabular.rdata")
