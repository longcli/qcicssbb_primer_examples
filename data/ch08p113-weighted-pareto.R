# prepares weighted pareto data
# the data itself
# along with a table of weighting by category

library(here)

here::here()

# the pareto data

dat_wpareto_data <- read.csv("data-raw/ch08p113-weighted-pareto-data.csv", header = TRUE, stringsAsFactors = FALSE)

save(dat_wpareto_data, file = "data/wpareto_data.rdata")


# the table of weight by category

dat_wpareto_wgt <- read.csv("data-raw/ch08p113-weighted-pareto-weights.csv", header = TRUE, stringsAsFactors = FALSE)

save(dat_wpareto_wgt, file = "data/wpareto_weights.rdata")
