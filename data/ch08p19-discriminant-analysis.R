# prepares discriminant analysis data

library(here)

here::here()

dat_da <- read.csv("data-raw/ch08p19-discriminant-analysis.csv", header = TRUE, stringsAsFactors = FALSE)

save(dat_da, file = "data/ch08p19-discriminant-analysis.rdata")
