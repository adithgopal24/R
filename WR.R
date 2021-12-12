library(tidyverse)
library(nflfastR)
library(ggimage)
library(gt)

options(scipen = 9999)

data <- load_pbp(2020)

# data%>%
#     filter(rush == 1 | pass == 1) %>%
#     select(posteam, desc, rush, pass, name, passer, rusher, receiver) %>%
#     head()

pbp_rp <- data %>%
  filter(posteam == "MIN", play_type == pass) %>%
  group_by(receiver_player_name) %>%
  summarize(
    mean_airyards = mean(air_yards), plays = n() 
    #mean_yacat = mean(yards_after_catch), receiving_yards, 
  ) %>%
  filter(plays > 20)