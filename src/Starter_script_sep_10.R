################################################################
# Script Name:
# Author:
# GitHub:
# Date Created:
#
# Purpose: This script ...
#
################################################################

################################################################
# Note: When sourcing script files, if you do not want objects
# available in this script, use the source() function along with
# the local = TRUE argument. By default, source() will make
# objects available in the current environment.

################################################################
# Load necessary libraries/source any function directories
# Example:
library(tidyverse)
library(dplyr)

R.utils::sourceDirectory(here::here("src", "functions"))


################################################################

dat <- diamonds
dat
view_html(dat)


dat |> glimpse()
glimpse(dat)

view(dat)

dat |> group_by(cut)

dat |> mutate(mean_price = mean(price))
#this mean represents the average price for all diamonds

dat |> group_by(cut) |> mutate(mean_price = mean(price))
#this mean represents the average price for each of the cuts
# the group_by mean is what I would have expected to get, means that are averaged by the cut, not just overall.
dat |> group_by(cut) |> summarize(mean_price = mean(price))

````

dat |> group_by(cut) |> summarize(mean_price = mean(price))

dat
dat |> mutate(price_mean = mean(price, na.rm = TRUE)) |> summarize(price_mean = mean(price_mean, na.rm = TRUE))


--
dat |> group_by(cut) |> summarize(mean_price = mean(price))
dat |> group_by(cut, clarity) |> summarize(mean_price = mean(price)) |> group_by(cut) |> summarise(price_mean = mean(mean_price))

dat |> group_by(cut)
dat |> group_by(cut, clarity)
##############################
# when you group by cut, versus when you group by cut versus clarity, you get average price for over the cuts, instead of each combination of cut and clarity. 
# after we get price by cut and clarity, we average price and get a different result.
#################

################################################################
# End of script
