# BMP plots

# Packages
library(ggplot2)

# Load data
BMP <- read.csv('../data/BMP.csv')

# Check
summary(BMP)

# Plot
ggplot(BMP, aes(substrate, BMP, fill = substrate)) +
  geom_boxplot() +
  labs(x = 'Substrate', y = expression('BMP'~(mL~g^'-1')), colour = 'Substrate') +
  theme(legend.position="none")
ggsave('../plots/BMP.png', height = 4, width = 4)
