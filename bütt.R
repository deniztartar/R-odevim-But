# Load the necessary libraries
library(ggplot2)
library(dplyr)

# Generate random data
set.seed(123)
data <- data.frame(x = rnorm(100, mean = 0, sd = 1),
                   y = rnorm(100, mean = 0, sd = 1))

# Summarize the data
summary(data)

# Visualize the data
ggplot(data, aes(x = x, y = y)) +
  geom_point() +
  geom_smooth(method = "lm")

# Fit a linear regression model
model <- lm(y ~ x, data = data)
summary(model)


