#Research_methods_2026
# Photophysiology_mock

# requried libraries
library(dplyr)
packageVersion("dplyr")
library(purrr)
packageVersion("purrr")
library(broom)
packageVersion("broom")
library(tidyr)
packageVersion("tidyr")
library(rstatix)
packageVersion("rstatix")
library(ggplot2)
packageVersion("ggplot2")



# set the working directory
## you will need to change the path to the one in which you want to work

setwd("C:/Users/NogaMa/OneDrive - University of Haifa/מסמכים/R")

# load the data

Photophysiology=read.csv("Mock_Photophysiology_2026.csv", header=TRUE, stringsAsFactors = TRUE)
str(Photophysiology)
levels(Photophysiology$Parameter)


# Let's summarize the data to see what's what.
library(dplyr)

Photophysiology_summary_table <- Photophysiology %>%
  group_by(Parameter, Treatment) %>%
  summarise(
    n       = sum(!is.na(Value)),
    mean    = mean(Value, na.rm = TRUE),
    sd      = sd(Value, na.rm = TRUE),
    min     = min(Value, na.rm = TRUE),
    q25     = quantile(Value, 0.25, na.rm = TRUE),
    median  = median(Value, na.rm = TRUE),
    q75     = quantile(Value, 0.75, na.rm = TRUE),
    max     = max(Value, na.rm = TRUE),
    .groups = "drop"
  )

View(Photophysiology_summary_table)

library(ggplot2)

ggplot(Photophysiology, aes(sample = Value, color = Treatment)) +
  stat_qq() +
  stat_qq_line() +
  ylab("Value")+
  xlab("theoretical quantile")+
  facet_wrap(~Parameter, scales = "free")


ggplot(Photophysiology, aes(x=Treatment, y=Value))+
  geom_boxplot()+
  geom_point(aes(color=Treatment), size=2, position=position_jitter(width=0.2))+
  facet_wrap(~Parameter, scales = "free")


# statistical test (choose what you deem appropriate for your data)
str(Photophysiology)

# Welch T-test

welch_results <- Photophysiology %>%
  group_by(Parameter) %>%
  nest() %>%
  mutate(
    test = map(data, ~ t.test(Value ~ Treatment, data = .x, var.equal = FALSE)),
    result = map(test, broom::tidy)
  ) %>%
  select(Parameter, result) %>%
  unnest(result)

View(welch_results)
class(welch_results)

write.csv(welch_results, "photophysiology_Welch_test_results.csv")

# Mann-Whitney non-parametric test

mw_results <- Photophysiology %>%
  mutate(
    Parameter = factor(Parameter),
    Treatment = factor(Treatment)
  ) %>%
  group_by(Parameter) %>%
  wilcox_test(Value ~ Treatment)

View(mw_results)
class(mw_results)

write.csv(welch_results, "photophysiology_Welch_test_results.csv")

