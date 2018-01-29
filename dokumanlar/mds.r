
require(data.table)
distanceMat=fread('/home/baydogan/Courses/IE582/InClass_MDS_distance_city.csv')

distanceMat[is.na(distanceMat)]=0

mds=cmdscale(distanceMat)
plot(mds[,1],mds[,2],main='Location',xlab='', ylab='',col=0)
text(mds[,1],mds[,2],names(distanceMat),cex = .75,pos=4)
