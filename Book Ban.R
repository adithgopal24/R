library(readxl)
banned_books <- read_excel("C:/Users/dithu/Downloads/PEN America's Index of School Book Bans (July 1, 2021 - June 30, 2022).xlsx")
library(ggplot2)
library(esquisse)


ggplot(banned_books) +
  aes(x = State, fill = `Type of Ban`) +
  geom_bar() +
  scale_fill_hue(direction = 1) +
  theme_minimal()

esquisse::esquisser(data = banned_books, viewer = "browser")

ggplot(banned_books) +
  aes(x = `Type of Ban`) +
  geom_bar(fill = "#112446") +
  theme_minimal()