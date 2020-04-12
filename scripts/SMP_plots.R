# SMP plots

# Packages
library(ggplot2)

# Load data
SMP <- read.csv('../data/SMP.csv')

# Check
summary(SMP)

# Plot
ggplot(SMP, aes(time_d, SMP, colour = substrate, group = bottle_id)) +
  geom_line() + facet_wrap(~ paste0('Lab ', lab_id, ' test ', test_id)) +
  labs(x = 'Time (d)', y = expression('SMP'~(mL~g^'-1')), colour = 'Substrate')
ggsave('../plots/SMP.png', height = 6, width = 6)

# Small plot for README
dd <- subset(SMP, lab_id == 19)
ggplot(dd, aes(time_d, SMP, colour = substrate, group = bottle_id)) +
  geom_line() + 
  facet_wrap(~ paste0('Lab ', lab_id, ' test ', test_id), scale = 'free') +
  labs(x = 'Time (d)', y = expression('SMP'~(mL~g^'-1')), colour = 'Substrate')
ggsave('../plots/SMP_small.png', height = 3, width = 4, dpi = 96)
