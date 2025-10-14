install.packages("sdm")
library(sdm)
system.file("external/species.shp")
[1] ""
file<-system.file("external/species.shp",package="sdm")
file
[1] "C:/Users/ramil/AppData/Local/R/win-library/4.4/sdm/external/species.shp"
rana<-vect(file)
rana
 class       : SpatVector 
 geometry    : points 
 dimensions  : 200, 1  (geometries, attributes)
 extent      : 110112, 606053, 4013700, 4275600  (xmin, xmax, ymin, ymax)
 source      : species.shp
 coord. ref. : WGS 84 / UTM zone 30N (EPSG:32630) 
 names       : Occurrence
 type        :      <num>
 values      :          1
                        0
                        1
plot(rana)
#but the par from before is still valid so we destroy it and replot it
> dev.off()
null device 
          1 
plot(rana)
#this is the distribution of the occurrencies
rana$Occurrence
  [1] 1 0 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 0 0 1 0 1 1 0 1 0 1 0 1 0 1 1 1 1
 [37] 0 1 0 0 0 0 0 0 0 1 0 0 1 0 1 0 0 0 0 0 1 1 1 1 0 0 1 0 1 0 1 1 1 1 0 0
 [73] 0 0 0 1 0 0 1 0 1 0 1 1 1 0 0 1 1 0 0 1 1 1 1 0 0 0 0 0 0 0 1 1 1 0 0 1
[109] 1 0 0 0 1 0 0 1 1 1 1 1 0 0 0 1 1 0 0 1 1 1 1 1 0 0 0 1 0 0 1 1 0 1 0 1
[145] 0 0 1 1 0 0 1 0 0 1 1 0 0 0 0 1 1 1 0 0 0 0 1 0 0 1 0 1 0 0 0 0 1 0 1 0
[181] 1 0 1 0 0 0 0 1 1 0 1 0 1 1 0 1 0 0 0 0
#data stored for each of these points
