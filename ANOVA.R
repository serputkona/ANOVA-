getwd()
b  <- read.csv("Ex.csv")
b
l <- b$Level.of.relaxation
t <- b$Types
library(nortest)
library(ggplot2) 

stripchart(l ~ t, xlab = "Level of relaxation",  
           ylab ="Types", col=c("blueviolet", "cyan4", "brown2", "green3"), 
           method = "jitter")

boxplot(l ~ t, data = b,
        xlab = "Level of relaxation",  
        ylab ="Types", col=c("blueviolet", "cyan4", "brown2", "green3"))

aggregate(x = l, by = list(t), FUN = mean)

mod1 <- aov(l ~ t, data = b)
summary(aov(l ~ t, data = b))

summary(lm(l ~ t, data = b))

bartlett.test(l ~ t)

tapply(l, t, var)

library(ggpubr)
ggqqplot(mod1$residuals, color = "mediumpurple1")

shapiro.test(mod1$residuals)
