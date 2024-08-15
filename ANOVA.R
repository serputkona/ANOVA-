setwd('D:/R_directory')
b<-read.table(file='Ex.csv',header=TRUE,sep=',')
View(b)
names(b)
library(nortest)

boxplot(Level.of.relaxation ~ Types, data = b,
        xlab = "Типи валеріани",  ylab ="Рівень розслабленості", col =
          c('pink',"red",'yellow','green'))
