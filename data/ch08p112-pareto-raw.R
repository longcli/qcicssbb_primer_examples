# prepares pareto data in raw form

library(here)

here::here()

dat_pareto_raw <- read.csv("data-raw/ch08p112-pareto-raw.csv", header = TRUE, stringsAsFactors = FALSE)

save(dat_pareto_raw, file = "data/pareto_raw.rdata")
