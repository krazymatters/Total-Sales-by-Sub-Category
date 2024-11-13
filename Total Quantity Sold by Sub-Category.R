# loading a CSV file from GitHub

url <- "https://raw.githubusercontent.com/shobanama/Superstore-R/refs/heads/master/Superstore.csv"

data <- read.csv(url)

ggplot(data, aes(x = Sub.Category, y = Quantity, fill = Sub.Category)) +
  geom_bar(stat = "summary", fun = "sum") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) + # Rotate x-axis labels
  labs(title = "Total Quantity Sold by Sub-Category", x = "Sub-Category", y = "Quantity") +
  theme_minimal()
