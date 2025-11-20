#how the different species are related and the temporary overlap of the species during the days
#confusion if it's number 8 or 6
#Code for graph theory in ecology
library(igraph)
species<-c("Algae","Zooplankton","Small Fish", "Large Fish", "Bird")
species
"Algae"       "Zooplankton" "Small Fish"  "Large Fish"  "Bird"       
predator<-c("Zooplankton","Small Fish", "Large Fish", "Bird")
prey<-c("Algae","Zooplankton","Small Fish", "Large Fish")
#now we build the dataframe, first time doing it
interactions<- data.frame(predator,prey)
interactions
     predator        prey
1 Zooplankton       Algae
2  Small Fish Zooplankton
3  Large Fish  Small Fish
4        Bird  Large Fish
