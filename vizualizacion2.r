
View(HLGIA)

HLGIAA<-filter(HLGIA,Mes  == "Enero" ,"Febrero")


n<-100
muestr<- sample(1:nrow(HIDR), size = n,replace = FALSE)
muestr
DR<-muestr

#cuidado hay que saber que hay una muestra mas la DR


RHID<-HIDR[muestr,]
head(RHID)
View(HLGIA)



View(IDR)
HIDR%>%
   group_by(Mes)

HGIA<- HIDR %>% 
  filter(Mes=="Diciembre" | Mes=="Enero" | Mes=="Febrero" )

GIA<- RHID%>% 
  filter(Mes=="Diciembre" | Mes=="Enero" | Mes=="Febrero" )

DIAGRAMA
====================================================================================
  
  ```{r, out.width= "100%", fig.width=10, fig.height=5}

ggplot(GIA, aes(x= sst.1.2.,  y = Evento, )) +
  geom_point(position = "jitter", alpha = 0.1, color = "grey30") +
  geom_boxplot() +
  scale_fill_manual(values = c("steelblue1", "limegreen", "orange")) +
  coord_flip() +
  #scale_y_continuous(labels = scales::comma) +
  facet_wrap(~Mes, scale = "free_y") +
  labs(title = "Diagrama de caja por Evento",
       subtitle = "(meses y temperatura)",
       caption = "Fuente: Datos ficticios (con observaciones)",
       y = "",
       x = "") +
  theme_minimal()  +
  theme(legend.position = "none",
        plot.title=element_text(size = 14, 
                                family= "Modern No. 20",
                                hjust = 0.5),
        plot.subtitle = element_text(size = 10, 
                                     family = "Modern No. 20",
                                     hjust = 0.5),
        text = element_text(size = 10, 
                            family="Modern No. 20"),
        axis.line.x = element_line(size = 1.1, 
                                   colour = "black"),
        axis.line.y = element_line(size = 1.1, 
                                   colour = "black"),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        axis.text.x=element_text(colour="black", 
                                 size = 8),
        axis.text.y=element_text(colour="black", 
                                 size = 8))

```
