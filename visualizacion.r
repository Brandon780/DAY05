HIDR <- read.csv2("HIDROLOGIA.csv")
getwd()
View(HIDR)
Summary(HIDR)


biblioteca ( ggplot2 )
biblioteca ( tidyverse )
biblioteca ( lector )                 
# Gráfico #


view(Hr)
n<-30
muestramala<- sample(1:nrow(HIDR), size = n,replace = FALSE)
muestramala
IDR<-muestramala
View(IDR)


HLGIA<-HIDR[muestramala,]
head(HLGIA)
View(HLGIA)


plot1 <- HLGIA %>% ggplot(aes(x = sst.1.2., y = Q.caudal, size = Evento)) +
  geom_point(alpha = 0.05) 

plot1


plot2 <- HLGIA %>% ggplot(aes(x = sst.1.2., y = Q.caudal, size = Evento, 
                             color = AÑO, label = Mes)) +
  theme_minimal()+
  ggtitle("DIAGRAMA DE DISPERSION POR EVENTO Y AÑO") + 
  geom_point(alpha = 0.5)
  

plot2
