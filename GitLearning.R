# Sydney Coronavirus Analysis
# Written by Laurence Park <lapark@westernsydney.edu.au>
# 11th of May 2021
# Description:
# Analysis of simulated coronavirus data for the Sydney population
# when intervention was not provided.
library("ggplot2")
# load data
setwd("/Users/kimlong_1/Documents/Western Sydney Univeristy MBA/Spring 2024 /Programming Data Science/Week 6 Data")
d <- read.csv("epiSEIHCRD_combAge.csv")
# We find that the time variable is not of type Date
# So it is changed to date type where time 0 is 1/3/2020
d$t <- as.Date(d$t, origin = "2024-4-4")
# The default palette is not suitable for those with colour blindness
# Set the colour palette for plots
cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442",
                "#0072B2", "#D55E00", "#CC79A7")
palette(cbbPalette)
dDate <- subset(d, subset = ((t >= "2020-06-01") & (t <= "2020-12-31")))
g <- ggplot(data = dDate) +
  geom_line(mapping = aes(x = t, y = H))
print(g)