library(ggplot2)
data(diamonds)


ggplot(diamonds) +
  aes(x = depth, y = price) + #framework of visualization
  geom_point(shape = "circle", size = 1.3, colour = "#112446") + #points to be plotted
  labs( #labels
    x = "Depth of Diamond",
    y = "Price of Diamond ($)",
    title = "Depth of Diamond vs Price of Diamond in USD,
    Labeled by Diamond Cut",
    caption = "With this visualization,
    there are five subplots. Each subplot shows,
    by Diamond Cut,
    the Depth of a diamond compared to the Price of a diamond. Since there are 5 cuts,
    there will be 5 subplots"
  ) +
  theme_bw() + #bw theme added
  theme(
    plot.title = element_text(size = 13L, #title font settings
                              face = "bold",
                              hjust = 0.5),
    plot.caption = element_text(size = 12L, #caption font settings
                                hjust = 1),
    axis.title.y = element_text(size = 13L, #y-axis font settings
                                face = "bold"),
    axis.title.x = element_text(size = 13L, #x-axis font settings
                                face = "bold")
  ) +
  facet_wrap(vars(cut)) #facet is the cut of the diamond


install.packages("palmerpenguins")
library(palmerpenguins)
data(package = 'palmerpenguins')
penguins
ggplot(penguins) + #using penguins dataset
  aes(x = body_mass_g, y = flipper_length_mm, colour = island) + #framework for visualizations
  geom_point(shape = "circle", size = 1.5) + #each penguin is represented by a dot
  scale_color_hue(direction = 1) +
  labs( #creating labels
    x = "Body Mass (g)",
    y = "Flipper Length (mm)",
    title = "Body Mass vs Flipper Length of Penguins by Species,
  Separated by Island of Inhabitance",
    color = "Island"
  ) +
  theme_bw() + #using bw theme for subplots
  theme(
    plot.title = element_text(size = 14L, #font settings for title
                              face = "bold",
                              hjust = 0.5),
    axis.title.y = element_text(size = 13L, #font settings for y-axis
                                face = "bold"),
    axis.title.x = element_text(size = 13L, #font settings for x-axis
                                face = "bold")
  ) +
  facet_wrap(vars(species)) #using species as facet

esquisse::esquisser(data = penguins, viewer = "browser")

# ggplot(diamonds) +
#   aes(x = depth, y = price) +
#   geom_point(shape = "circle", size = 1.5, colour = "#112446") +
#   theme_minimal() +
#   facet_wrap(vars(cut))

