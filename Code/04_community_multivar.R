#Code for performing multivariate analysis with community abundance matrices

#we use the vegan package, useful for this type of analysis
library(vegan)
data(dune)
#we will see the matrix contained in it, it's as the example in the presentation, 20 dimensions
dune
#views the plot
head(dune)
#shows only the first few rows of the plot, only the first 6
#range, see Notion, of 1000, log is in n, we see the result is small, compacting more in log than in sqrt
multivar<-decorana(dune)
#i have applied a multivar analysis to a set which is called dune
multivar #calls and gives info on the variable
#we are interested of eigenvalues, and DCA2 and DCA1 which are the axis, the first longer than the second
#pca analysis
#calculation of the total lenght
dca1l<-3.7004
dca2l<-3.1166 #took from the multivar info on axis lenght
dca3l<-1.30055
dca4l<-1.47888
#get the percentage of the range detected (explained variability) by each axis
total<-dca1l+ dca2l+dca3l+dca4l
total<-sum(c(dca1l+ dca2l+dca3l+dca4l)) #either of the two notations
#dunno: let's see together
percdca1<-dca1l*100/total
percdca2<-dca1l*100/ total
percdca3<-dca1l*100/ total
percdca4<-dca1l*100/ total #ultimi due forse no?
percdca1 +perdca2
#71.03680
#see Notion for the result
multipca<-pca(dune)
multipca  

Call: pca(X = dune)

-- Model Summary --

              Inertia Rank
Total           84.12     
Unconstrained   84.12   19

Inertia is variance

-- Eigenvalues --

Eigenvalues for unconstrained axes:
   PC1    PC2    PC3    PC4    PC5    PC6    PC7    PC8 
24.795 18.147  7.629  7.153  5.695  4.333  3.199  2.782 
(Showing 8 of 19 unconstrained eigenvalues)
plot(multivar)
#names are the species, and numbers are the original plots and sets, considering the new axis, how the plots are more or less similar to each other, pca of species and abundance
