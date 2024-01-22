# Simulates the birthday paradox
bday_sim <- function(num_sims, num_classmates) {
  matches <- 0

  for (i in 1:num_sims) {
    # Generate random birthdays
    bdays <- sample(1:365, num_classmates, replace = TRUE)
    # Check for matching birthdays
    if (length(bdays) != length(unique(bdays))) {
      matches <- matches + 1
    }
  }

  # Calculate the probability of matching birthdays
  probability <- matches / num_sims
  return(probability)
}

# Plots the results of the birthday paradox simulation
plot_bday_sim_results <- function(num_sims, max_classmates) {
  # Generate x values (number of classmates)
  x_vals <- 1:max_classmates
  # Calculate y values (matching probability)
  y_vals <- sapply(x_vals, function(num) bday_sim(num_sims, num)) # nolint

  # Plot the results
  plot(x_vals, y_vals, type = "o", 
       xlab = "Number of Classmates", 
       ylab = "Probability of Matching Birthdays", 
       main = "Birthday Paradox Simulation", 
       col = "#0cdceb", pch = 20, lwd = 2)
}

# Example usage
num_sims <- 1000
max_classmates <- 50
plot_bday_sim_results(num_sims, max_classmates)
