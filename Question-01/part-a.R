# Function to calculate binomial probability mass function
binomial_pmf <- function(x, n, p) {
  choose_n_x <- choose(n, x)
  pmf <- choose_n_x * p^x * (1 - p)^(n - x)
  return(pmf)
}

# Set parameters
p <- 0.75  # probability of paying on time
n <- 25    # number of accounts

# Generate x values
x_values <- 0:n

# Calculate binomial probabilities for each x
probabilities <- sapply(x_values, function(x) binomial_pmf(x, n, p))

# Plot the binomial probability distribution
barplot(probabilities, 
        names.arg = x_values, 
        xlab = "Number of Clients Paying on Time", 
        ylab = "Probability",
        main = "Binomial Probability Distribution",
        col = "blue", # color of bars
        border = "black", # remove border color
        density = 20, # add diagonal lines for better visibility
        ylim = c(0, max(probabilities) + 0.05)) # set y-axis limit

# Add vertical line as mean
abline(v = n * p, col = "red", lty = 2, lwd = 2)















# # Part (a) - Binomial Probability Distribution
# set.seed(123)  # Setting a seed for reproducibility

# # Parameters
# p <- 0.75  # Probability of paying on time
# n <- 25    # Number of individuals

# # Simulate Binomial Distribution
# binomial_distribution <- rbinom(1000, n, p)

# # Plotting the histogram
# hist(binomial_distribution, main="Binomial Probability Distribution",
#      xlab="Number of Clients Paying on Time", ylab="Frequency",
#      col="lightblue", border="black")

# # Add vertical lines for observed values
# abline(v = seq(0, n, by = 1), col="#c25400", lty=2) # nolint

# # Interpretation of the histogram
# # This histogram shows the distribution of the number of clients paying on time
# # based on the given probability (p=0.75) and sample size (n=25).
# # The red dashed lines represent each possible value from 0 to 25.
