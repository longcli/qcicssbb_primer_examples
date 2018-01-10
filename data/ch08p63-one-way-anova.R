# prepares one way anova data

library(here)

here::here()

dat_oneway_anova <- read.csv("data-raw/ch08p63-one-way-anova.csv", header = TRUE, stringsAsFactors = FALSE)

save(dat_oneway_anova, file = "data/anova_oneway.rdata")
