# simulate data for CSSBB Primer
# F test
# page VIII-59


## Example with simulated data
# Why create simulated data?
#   Most experiments result in raw data to be used in the analysis.  We create
# simulated data for this example to show how the analysis works with raw (unsummarized) data.


### Simulate data
# We use the 'set.seed' function affects the random number generation.  We use it 
# within a loop for reproducability.  
# The loop runs through each seed, creates a random normal sample with specified
# mean and standard deviation.  The sample mean and sample standard deviation are
# calculated for that iteration and stored in a dataframe.  
# When the loop is finished the absolute distance of each sample statistic from the
# desired value is calculated and summed.  We then look for the minimum value of 
# this sum (deviation).  


library(dplyr)


# set targets
ssize_x0 <- 7
mu_x0 <- 10000
sd_x0 <- 300


# empty dataframe to collect results
rslt <- data.frame(i = as.numeric(), dtot = as.numeric())


# loop through seeds for RNG
for (loop_i in 1:10000){
  
  set.seed(loop_i); x <- rnorm(n = ssize_x0, mean = mu_x0, sd = sd_x0); 
  mx <- mean(x) 
  sx <- sd(x)
  
  diff_m <- abs(mx - mu_x0)
  diff_s <- abs(sx - sd_x0)
  
  # diff_tot <- diff_m + diff_s
  diff_tot <- diff_s
  
  rslt[loop_i, 'i'] <- loop_i
  rslt[loop_i, 'dtot'] <- diff_tot
  
}


# Order by decreasing absolute difference.
rslt <- rslt %>% mutate(absdif = abs(dtot - 0)) # somewhat redundant, but can use if diff target <> 0
rslt <- arrange(rslt, absdif)


# Plot the result of the data simulation.
plot(rslt$absdif)
abline(h = rslt[1, 'absdif'], lty = 2, col = 'red')
abline(v = 1, lty = 2, col = 'red')


# Look at simulated differences.
head(rslt)


# Which seed to use?  The one that minimizes the difference from the desired sample statistics.
cat("Value fed to set.seed = ", rslt[1,1])


# Get the simulated data for the example.
set.seed(rslt[1,1]); samplex = rnorm(n = ssize_x0, mean = mu_x0, sd = sd_x0); mean(samplex); sd(samplex)
cat(paste('simulated mean', round(mean(samplex), 2), '\n'))
cat(paste('simulated sd', round(sd(samplex), 3)))



# END CODE ####################################################################