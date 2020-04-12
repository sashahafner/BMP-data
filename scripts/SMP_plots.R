# SMP plots

# Packages
library(ggplot2)

# Load data
SMP <- read.csv('../data/SMP.csv')
summary(SMP)

ggplot(SMP, aes(time_d, SMP, colour = substrate, group = bottle_id)) +
  geom_line() + facet_wrap(~ paste0('Lab ', lab_id, ' test ', test_id)) +
  labs(x = 'Time (d)', y = expression('SMP'~(mL~g^'-1')), colour = 'Substrate')
ggsave('../plots/SMP.png', height = 6, width = 6)
