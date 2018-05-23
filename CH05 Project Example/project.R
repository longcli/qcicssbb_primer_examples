# project planner with R
# QCI CSSBB Primer
# 2018-05
# Cliff Long


# RESOURCES ###################################################################

# https://stackoverflow.com/questions/3550341/gantt-charts-with-r

# https://www.pmi.org/

# https://www.projectlibre.com/




# LOAD PACKAGES ###############################################################

library(readxl)
library(dplyr)
library(projmanr)




# LOAD DATA ###################################################################

# taskdata1:
#   
#   id name duration pred
# 1  1   T1        3     
# 2  2   T2        4    1
# 3  3   T3        2    1
# 4  4   T4        5    2
# 5  5   T5        1    3
# 6  6   T6        2    3
# 7  7   T7        4  4,5 
# 8  8   T8        3  6,7


datin <- read_excel('project_data.xlsx')

datin$pred[1] <- ""


dat1 <- datin %>%
  mutate(id = as.integer(id)) %>% 
  mutate(name = as.factor(name)) %>% 
  mutate(pred = as.factor(pred)) %>% 
  mutate(duration = as.integer(duration))


# necessary - package projmanr doesn't recognize tidy tibble structure
dat1 <- as.data.frame(dat1)


glimpse(dat1)



# DO STUFF ####################################################################


# Create a gantt chart using the raw data -------------------------------------
gantt(dat1)


# Create a second gantt chart using the processed data ------------------------
res <- critical_path(dat1)
gantt(res)


# Create a network diagram chart using the raw data ---------------------------
network_diagram(dat1)


# Create a second network diagram using the processed data --------------------
network_diagram(res)



# example 1 from package ======================================================

(taskdata1)


gantt(taskdata1)
tmpres <- critical_path(taskdata1)
gantt(tmpres)
network_diagram(tmpres)





# example 2 from package ======================================================

(taskdata2)


gantt(taskdata2)
tmpres <- critical_path(taskdata2)
gantt(tmpres)
network_diagram(tmpres)



# END CODE ####################################################################