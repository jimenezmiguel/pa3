summary (shrinkage)

view(nessw)

library(tidyverse)
library (languageR)
library(ggplot2)
data(package = "languageR")

view(spanishFunctionWords)
view(english)
summary(english)
view(ratings)

#plot with plants and animals to see
##if they appear more in sing or plural
ratings %>%
ggplot (aes(x = FreqSingular, y = FreqPlural, col = Class)) +
  geom_point() +
  geom_smooth(method = lm)

#plot with plants and animals to see the Frequency as  function of familiarity

ratings %>%
  ggplot (aes(x = Frequency, y = meanFamiliarity, col = Class)) +
  geom_point() +
  geom_smooth(method = lm)

#plot with plants and animals to see the mean Frequency as  function of mean familiarity

ratings %>%
  ggplot (aes(x = Frequency, y = meanFamiliarity, col = Class)) +
  geom_point() +
  geom_smooth(method = lm) 

#summary of english

summary(ratings$Frequency)
summary(ratings$meanFamiliarity)
summary (ratings$Class)

# plot wit English WrittenSpokenFrequencyRatio ~ Lengthin Letters

library(tidyverse)
library (languageR)
library(ggplot2)


summary(english)


english %>%
  ggplot (aes(x = WrittenSpokenFrequencyRatio, y = LengthInLetters)) +
  geom_point(alpha = 0.05) +
  geom_point(colour = "black", size = 1.5, alpha = 0.05) +
  geom_smooth(method = lm) 
 

        #bivariate regression / calculation WrittenSpokenFrequencyRation ~ LenghtinLetters

english_mod <- lm(WrittenSpokenFrequencyRatio ~ LengthInLetters, data = english)
summary(english_mod)


# switch the two for a better R2
english_mod3 <- lm(LengthInLetters ~ WrittenSpokenFrequencyRatio, data = english)
summary(english_mod3)



#testing assigning plots

plot_english_1 <- 
  english %>%
  ggplot (aes(x = WrittenSpokenFrequencyRatio, y = LengthInLetters)) +
  geom_point(alpha = 0.05) +
  geom_point(colour = "black", size = 1.5, alpha = 0.05) +
  geom_smooth(method = lm) 
plot(plot_english_1)

