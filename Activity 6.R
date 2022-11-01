#Activity 6

library(ggplot2)
library(dcData)
library(dplyr)
data(BabyNames)
library(esquisse)

#BabyNames %>%
 # group_by(name) %>%
  #summarise(count=n())

Tmp <- group_by(BabyNames, year, sex)
summarise(BabyNames, totalBirths = sum(count))

counts <- group_by(BabyNames) %>%
  summarise(count = n())
counts

choose_names <- group_by(BabyNames) %>%
  filter(name == "Jalen" | name == "Jason" | name == "Arthur", sex == "M")
choose_names
esquisse::esquisser(data = choose_names, viewer = "browser")

ggplot(choose_names) +
  aes(x = year, y = count, colour = name) +
  geom_line(size = 0.5) +
  scale_color_hue(direction = 1) +
  labs(
    x = "Year",
    y = "Total Number of People with name",
    title = "Popularity of the First Names \"Jalen\",
    \"Arthur\",
    and \"Jason\" Over Time"
  ) +
  theme_bw() +
  theme(
    plot.title = element_text(size = 18L,
                              face = "bold",
                              hjust = 0.5),
    axis.title.y = element_text(size = 15L),
    axis.title.x = element_text(size = 15L,
                                face = "bold")
  )

ggplot(choose_names) +
  aes(x = year, y = count, colour = name) +
  geom_line(size = 1.2) +
  scale_color_hue(direction = 1) +
  labs(
    x = "Year",
    y = "Total Number of People with Name",
    title = "Popularity of the First Names \"Jalen\",
    \"Arthur\",
    and \"Jason\" Over Time"
  ) +
  theme_bw() +
  theme(
    plot.title = element_text(size = 15L,
                              face = "bold",
                              hjust = 0.5),
    axis.title.y = element_text(size = 14L,
                                face = "bold"),
    axis.title.x = element_text(size = 14L,
                                face = "bold")
  )

minny = data("Minneapolis2013")
nrow(minny)

nrow(data("Minneapolis2013"))

View(Minneapolis2013)
force(Minneapolis2013)

second_place <- Minneapolis2013 %>%
  group_by(Second) %>%
  summarize(
    count = n()
  ) %>%
  arrange(desc(count))
second_place

undervote <- Minneapolis2013 %>%
  group_by(First)
  filter(First == "undervote") %>%
  summarize(count = n())
nrow(undervote)

Minneapolis2013 %>% count(First, Second, sort = TRUE) %>% top_n(3,n)

precinct_votes <- Minneapolis2013 %>%
  group_by(Precinct) %>%
  summarize(count = n()) %>%
  arrange(desc(count))
precinct_votes


