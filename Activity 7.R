library(dplyr)
library(knitr)
library(kableExtra)
library(janitor)

army_data <- read.csv(file = 'rawArmyData.csv')
w2_data <- army_data %>%  
  filter(payGrade == "W-2") %>%
  tabyl(maritalStatus, sex) %>%
  adorn_totals(where = c("row", "col") )%>%
  adorn_percentages(denominator = "all") %>%
  adorn_pct_formatting(digits = 2)
format_w2 <- attr(w2_data, "core") %>%
  adorn_totals(where = c("row", "col")) %>%
  mutate(
    across(where(is.numeric), format, big.mark = ",")
  )
w2FreqTab <- w2_data %>%
  adorn_ns(position = "front", ns = format_w2)

w2FreqTab

w2FreqTab %>%
  kable(
    caption = "Marital Status and Sex of Army members with paygrade W-2",
    booktabs = TRUE,
    align = c("l", rep("c", 6))
  ) %>%
  kableExtra::kable_styling(
    bootstrap_options = c("basic", "striped", "bordered"),
    font_size = 16
  )
w2FreqTab


diamonds %>%
  group_by(z) %>% #making sure table is for depth z
  group_by(cut) %>% #making sure table shows stats by the type of cut
  summarize (
    count = n(),
    Minimum = min(z, na.rm = TRUE),
    First_Quintile = quantile(z, probs = 0.2, na.rm = TRUE), 
    Second_Quintile = quantile(z, probs = 0.4, na.rm = TRUE),
    Median = median(z, na.rm = TRUE),
    Third_Quintile = quantile(z, probs = 0.6, na.rm = TRUE),
    Fourth_Quintile = quantile(z, probs = 0.8, na.rm = TRUE),
    Maximum = max(z, na.rm = TRUE),
    Mean = mean(z, na.rm = TRUE),
    Standard_Deviation = sd(z)
  ) %>%
  kable(
    caption = "Summary for Diamonds of Depth Z, grouped by Cut",
    booktabs = TRUE,
    align = c("l", rep("c", 6))
  ) %>%
  kableExtra::kable_styling(
    bootstrap_options = c("basic", "striped", "condensed"),
    font_size = 16
  )
diamonds
