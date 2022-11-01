#how does the ordered structure of the height data vary by the family role of the person?

#Plan
##Dataset
##Load packages (ggplot2, esquisse)
##Aim: rank of heights by family role
##Geometry: Box plots (developed to show how dataset is broken down according to ordered structures)
##Mappings: Family role, heights

#Code
##read in data

library(readxl)
galtonData <- read_excel("C:/Users/dithu/Downloads/galton.xlsx")

library(ggplot2)
library(esquisse)

esquisse::esquisser(data = galtonData, viewer = "browser")



ggplot(galtonData) +
  aes(x = Person, y = `HeightIN (add 60 to value)`) +
  geom_boxplot(fill = "#228B22") +
  theme_minimal() +
  ylab("Difference in Height From 60 inches")
