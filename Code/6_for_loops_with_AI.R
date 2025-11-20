#how to repeat commands in a simple way

 for(sp in species_list) {
   subdat<-kerinci[kerinci$Sps== sp,]
   times<-subadt$Timecirc
   densityPlot(times, main=paste("Kernel desnisty for", sp))
 }
species_list <- unique(kerinci$Sps)
> n <- length(species_list)
> par(mfrow = c(ceiling(n/2), 2))
> for (sp in species_list) {
+     
+     subset_data <- kerinci[kerinci$Sps == sp, ]
+     t <- subset_data$circ
+     
+     densityPlot(t,
+                 main = paste("Kernel Density -", sp),
+                 xlab = "Time (radians)")
+ }
#this way we get all the plots in a graph, to compare them
