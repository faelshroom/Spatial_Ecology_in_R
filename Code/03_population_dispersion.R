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
