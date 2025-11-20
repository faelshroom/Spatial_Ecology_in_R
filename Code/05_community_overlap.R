#same 11/11 lesson but new topic
#This code is analysing the temporal overlap between species
install.packages("overlap")
library(overlap)
#kernel density function from an histogram to the other, it's a circular interpolation, interpolation in a continuous
data(kerinci) #dataset related
head(kerinci)
  Zone   Sps  Time
1    1 tiger 0.175
2    1 tiger 0.787
3    1 tiger 0.247
4    1 tiger 0.591
5    1 tiger 0.500
6    1 tiger 0.564 

summary(kerinci)
      Zone            Sps           Time       
 Min.   :1.000   macaque:273   Min.   :0.0030  
 1st Qu.:2.000   tiger  :201   1st Qu.:0.2990  
 Median :3.000   muntjac:200   Median :0.4665  
 Mean   :2.687   tapir  :181   Mean   :0.4924  
 3rd Qu.:4.000   golden :104   3rd Qu.:0.7147  
 Max.   :4.000   clouded: 86   Max.   :0.9900  
                 (Other): 53       
#translate the data from 0 to 1, to 0 to 160 e.g. 
#we do 2*pi to have the complete circle from a linear
kerincitimecirc<-kerinci$Time * 2 * pi
circulartime<-kerinci$Time * 2 * pi
circulartime
#shows very long graph usseless, to have it more compact we can:
kerinci$circ<-kerinci$Time * 2 * pi
> head(kerinci)
  Zone   Sps  Time     circ
1    1 tiger 0.175 1.099557
2    1 tiger 0.787 4.944867
3    1 tiger 0.247 1.551947
4    1 tiger 0.591 3.713363
5    1 tiger 0.500 3.141593
6    1 tiger 0.564 3.543717

#subsets from kerinci into the new dataset which only considers the new target
tiger<-kerinci[kerinci$Sps=="tiger",] #comma to stop the commandx
#now i can create an object to create a singular time for the dataset, with the histograms that are now continuous
timetiger<-kerinci$circ
plot(timetiger)
#see Notion for the result of the plot command
#it's wrong
timetiger<-tiger$circ
densityPlot(timetiger)
#right one is up now
#he also wrote another version of this, but it's the same

#exercise: create a kernel density plot for the species macaque
macaque<-kerinci[kerinci$Sps=="macaque",]
?????
desnityPlot(macaque$Timecirc)
densityPlot(macaquetime)
overlapPlot(tigertime, macaquetime)
#problem with the vectors?
Errore in checkInput(A) : 
  The times of observations must be in a numeric vector.



