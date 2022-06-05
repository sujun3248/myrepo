library(biogrowth)
install.packages("tidyverse")
library(tidyverse)
set.seed(1241)

##Deterministic modeling 

##Growth prediction under static conditions
my_model<-"modGompertz"
my_pars<-list(logN0=2,C=6,mu=.1,lambda=50)
my_time<-seq(0,200,length=1000)
static_prediction<-predict_isothermal_growth(my_model, my_time, my_pars)
static_prediction$simulation
plot(static_prediction) + 
  xlab("Storage time (h)") + 
  ylab("Microbial count (log CFU/ml)") +
  theme_gray()

##Hi there
