# prepares stem and leaf plot data

library(here)
library(readxl)


here::here()

dat_bpsim <- read_excel("data-raw/ch07p14-boxplot-simulated-data.xlsx")

save(dat_stemleaf, file = "data/stem-and-leaf-plot.rdata")
