install.packages("cluster")  # Clustering Algorithms
install.packages("factoextra") # Clustering Viaualization
install.packages("dendextend") # for comparing two dendograms
installed.packages("tidyverse")
library(cluster)
library(dendextend)
library(factoextra)

 y = c(rep(1:5, each =4))
x1 = c(rep(11:20, each = 2)) 
x2 = c("T","F","T","F","T","F","T","F","T","F","T","F","T","F","T","F","T","F","T","F")

# Create Data frame
datacl = data.frame(y,x1,x2)
d = dist(as.matrix(datacl)) # Find Distance matrix
gc = hclust(d) # apply hierarchical clustering

plot(d) # Plot the dendogram

# Agglomeration 

hcdataclagnes = agnes(datacl,method="complete")
hcdataclagnes
hcdataclagnes$ac

#Dendogram
pltree(hcdataclagnes, cex = 0.5, hang = -2)


#cutree()
subgrp4 = cutree(hcdataclagnes, k=4)
table(subgrp4)

## Data Set USArrests
datausa = USArrests
datausascaled = scale(datausa) #Scaling of data

##Agglomerative Approach

#Dissimilarity Approach
distusascaled = dist(datausascaled, method = "euclidian")

# Hierarchical Clustering
hclcomplin = hclust(distusascaled,method = "complete")

#Plot dendogram
plot(hclcomplin, cex = 0.6 ,  hang = -1)

# AGNES
hclcomplinagnes = agnes(distusascaled, method ="complete")
hclcomplinagnes$ac
hclaverageagnes = agnes(distusascaled, method ="average")
hclaverageagnes$ac
hclsingleagnes = agnes(distusascaled, method ="single")
hclsingleagnes$ac
hclwardagnes = agnes(distusascaled, method ="ward")
hclwardagnes$ac #Hence 'war' method is the strongest

subcut4 = cutree(hclwardagnes, k =4)
rect.hclust(hclwardagnes, k=4, border = 2:5)

# Scatter Cluster Visualization
fviz_cluster(list(data=datausascaled, cluster = subgrp4))


# K_Means Clusterning
dataeclust = eclust(datausascaled,"hclust",k=3,method = "complete", graph = FALSE)

## Dendograms side-by-side
library(dendextend)
dendward = as.dendrogram(hclwardagnes)
dendcomlink = as.dendrogram(hclcomplin)

tanglegram(dedward,dendcomlink)
# Checking Entanglement # 0 being no entanglement is the best, 1 is the worst
dendlist_wardlink = dendlist(dendward,dendcomlink)
entanglement(dendlist_wardlink)


#Elbow method



