#Brazil
Year=c(2005,2006,2007,2008,2009,2010,2011,2012,2013,2014)
LifeExpectancy=c(72.7, 73, 73.3, 73.4, 73.6, 73.8, 74.1,74.5, 74.7, 74.8)
Alcohol=c(6.97, 7.1, 7.19, 7.21,7.33, 7.52, 7.58,7.55,7.24, 7.32)

plot(Year, LifeExpectancy, type="o", col="blue", xlab="Years", 
     ylab="Life Expectany", 
     main="Life Expectany between 2005~2014")
plot(Year, Alcohol, type="o", col="red", xlab="Year", ylab="Alcohol", 
     main="Alcohol consumption between 2005~2014")
plot(Year, Schooling, type="o", col="green", xlab="Year", ylab="Schooling", 
     main="Schooling between 2005~2014")

cor(LifeExpectancy,Alcohol, method ="spearman") 
cor.test(LifeExpectancy,Alcohol,method="spearman",exact = FALSE)

cor(LifeExpectancy,Schooling, method ="spearman") 
cor.test(LifeExpectancy,Schooling,method="spearman",exact = FALSE)

lines(Alcohol, type="o", col="red")

wilcox.test(LifeExpectancy,Alcohol, mu = 0,
            alt ="two.sided", paired = T,conf.int= T, 
            confi.level = 0.95, exact = F, correct = F)


