# prepares kruskal wallis data

library(here)

here::here()

dat_kruskal <- read.csv("data-raw/ch08p82-kruskal-wallice.csv", header = TRUE, stringsAsFactors = FALSE)

save(dat_kruskal, file = "data/kruskal.rdata")
