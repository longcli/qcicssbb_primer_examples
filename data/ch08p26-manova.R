# prepares manova data

library(here)

here::here()

dat_manova <- read.csv("data-raw/ch08p26-manova.csv", header = TRUE, stringsAsFactors = FALSE)

save(dat_manova, file = "data/manovadat.rdata")


## loading the data
# din <- load('manovadat.Rdata')
# str(din)
# str(dat_manova)
# dat_manova
