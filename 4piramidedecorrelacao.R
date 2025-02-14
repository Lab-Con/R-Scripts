####Piramide de correlacao

library(GGally)
library(corrplot)
library(ggplot2)

dados<-read.csv("https://raw.githubusercontent.com/Lab-Con/R-Scripts/main/piramide2.csv?token=AUEPCQMSIGO5PRJ26BSLI43AYJ6A2") #nesse caso tem que ser csv, txt não faz
attach(dados)
summary(dados)
View(dados)

ggcorr(dados,method = c("pairwise","pearson"),
       nbreaks = 10,label = T, low = "red3", high = "green3",layout.exp = 1,
       label_round = 2, name = "Grau de correlação", label_alpha = FALSE,
       hjust = 0.9) + ggtitle(label = "Piramide de correlacao") +
  theme(plot.title = element_text(hjust = 0.5))

#gostei dessa porra!!!!

