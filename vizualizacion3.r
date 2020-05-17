getwd()

library(ggraph) 
library(extrafont)
library(tidygraph) 

library(Brackpoints)
# Cargamos las librer�as necesarias
library(devtools)
devtools::install_github("gastonstat/arcdiagram")
library(arcdiagram)
library(igraph)
library(randomcoloR)
library(arcdiagram)



lista_de_paquetes <- c("devtools", "igraph", "randomcoloR") # Definimos los paquetes que queremos cargar
paquetes_nuevos <- lista_de_paquetes[!(lista_de_paquetes %in% installed.packages()[,"Package"])] # Buscamos los paquetes que no tenemos
if(length(paquetes_nuevos)) install.packages(paquetes_nuevos) # Instalamos los paquetes que no tenemos


nombres_distrito=c("Ciutat Vella","l'Eixample","Extramurs","Campanar",
                   "la Sa�dia","el Pla del Real","l'Olivereta","Patraix",
                   "Jes�s","Quatre Carreres","Poblats Mar�tims",
                   "Camins al Grau","Algir�s","Benimaclet",
                   "Rascanya","Benicalap","Pobles del Nord",
                   "Pobles de l'Oest","Pobles del Sud")

# Asignamos un tama�o a los v�rtices seg�n el n�mero de aristas que confluyen en �l
degrees<-(degree(graph.edgelist(edgelist, directed = TRUE))-2)/2

png("20200516 Grafico diagrama de arco.png", width = 9, height = 5, units = 'in', res = 300)
arcplot(RHID, labels = A�O, lwd.arcs = 2, col.arcs = randomColor(length(Evento),hue="blue"),
        main="Relaciones de vecindad entre los distritos de Val�ncia", 
        cex.nodes = log(A�O)+0.5, col.nodes = "#b8e0f2", cex.labels = 0.7,
        sub="Elaboraci�n: Oficina d'Estad�stica. Ajuntament de Val�ncia.", font.sub=3, cex.sub=0.5)
dev.off()
       
       
       
        caption = "Picanumeros" 
       breaks = c(1,3,5,7,9)
       biblioteca ( tidyverse )
       library(tydiverse)
       biblioteca ( igraph )
       library(igraph)
       biblioteca ( ggraph )
       library(ggraph)
       biblioteca ( babynames )   
   
       
       
       dfg  <- graph_from_data_frame ( HLGIA )
       ggraph ( dfg , layout = " linear " ) + 
         geom_node_point ( tama�o  =  3 ) +
         geom_edge_arc ( edge_colour = " blue " , edge_alpha = 0.3 , edge_width = 0.2 ) +
         geom_node_text (aes ( etiqueta = nombre ), repeler  =  FALSO , tama�o = 4.5 , color = " verde " , nudge_y = - 0.1 ) +
         ggtitle ( " Diagrama de Arco " )
       