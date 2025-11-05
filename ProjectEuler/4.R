max<-999*999
min<-100*100

isPal<-function(x){
  og<-strsplit(as.character(x), split = "")[[1]]
  new<-rev(og)
  
  if(paste(og, collapse = "") == paste(new, collapse = "")){
    return(TRUE)
  }else{return(FALSE)}
  
}

pals<-c()
q<-1
for (i in min:max) {
  if(isPal(i)==TRUE){
      pals[q]<-i
      q<-q+1
    
  }
}

pals.rev<-rev(pals)
wedone<-FALSE
for (i in 1:length(pals.rev)) {
  for (j in 100:999) {
    if(pals.rev[i] %% j == 0){
      chars<-nchar(pals.rev[i]/j)
      if(chars == 3){
        print(pals.rev[i])
        wedone<-TRUE
        break
      }
    }
  if(wedone == TRUE){break}
  }
}
