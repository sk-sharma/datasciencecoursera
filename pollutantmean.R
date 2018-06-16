pollutantmean<- function(directory, p, id=1:332){
  dat=NULL
  path<-"C:/Users/Sumit/coursera"
  y<-paste(path,directory,sep="/")
  files <- list.files(y)
  for(i in 1:length(id)){
      filei<-paste(y,files[id[i]],sep="/")
  dat1<-read.csv(filei)
  dat<-rbind(dat,dat1)
  }
 z<-names(dat)
 for(j in 1:length(z)){
 if(z[j]==p){
   print(round(mean(dat[,j],na.rm=T),3))
    }
  }
}
