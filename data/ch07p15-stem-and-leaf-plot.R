# prepares stem and leaf plot data

library(here)

here::here()

dat_stemleaf <- read.csv("data-raw/ch07p15-stem-and-leaf-plot.csv", header = FALSE, stringsAsFactors = FALSE)

save(dat_stemleaf, file = "data/stem-and-leaf-plot.rdata")
