library(readxl)
army <- read_excel("C:/Users/dithu/Downloads/army.xlsx")

library(ggplot2)
library(esquisse)

esquisse::esquisser(data = army, viewer = "browser")

ggplot(army) +
  aes(x = `Pay Grade`, y = Count, fill = Status, colour = Sex) +
  geom_col() +
  scale_fill_hue(direction = 1) +
  scale_color_hue(direction = 1) +
  theme_minimal()

