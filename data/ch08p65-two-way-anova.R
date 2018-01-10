# prepares two way anova data

library(here)

here::here()

dat_twoway_anova <- read.csv("data-raw/ch08p65-two-way-anova.csv", header = TRUE, stringsAsFactors = FALSE)

save(dat_twoway_anova, file = "data/anova_twoway.rdata")
