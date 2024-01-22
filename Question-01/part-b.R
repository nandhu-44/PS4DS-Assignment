# Set parameters
average_calls_per_day <- 25
num_days <- 365

# Simulate the number of calls using a Poisson distribution
calls_per_day <- rpois(num_days, lambda = average_calls_per_day)

# Plot the histogram
hist(calls_per_day, 
     breaks = seq(0, max(calls_per_day) + 1, by = 1),
     col = "skyblue",
     xlab = "Number of Calls per Day",
     ylab = "Frequency",
     main = "Simulation of Daily Calls over 365 Days")

# Add vertical line as the average number of calls per day
abline(v = average_calls_per_day, col = "red", lty = 2, lwd = 2)

# Add legend
legend("topright", legend = c("Actual Calls", "Average Calls"), 
       col = c("skyblue", "red"), lty = c(1, 2), lwd = 2)






# # Part (b) - Poisson Distribution for Calls
# set.seed(123) # Setting a seed for reproducibility

# # Parameters
# lambda <- 25 # Average calls per day
# days <- 365 # Number of days

# # Simulate Poisson Distribution
# poisson_distribution <- rpois(days, lambda)

# # Plotting the histogram
# hist(poisson_distribution,
#      main = "Poisson Distribution of Calls in 365 Days", xlab = "Number of Calls per Day", ylab = "Frequency", # nolint
#      col = "lightgreen", border = "black"
# )

# # Interpretation of the histogram
# # This histogram shows the distribution of the number of calls per day
# # based on the given average (lambda=25) and the number of days (365).
