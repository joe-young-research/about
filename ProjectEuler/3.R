# Problem
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

isPrime<- function(x){
  for (i in 2:x) {
    if(trunc(x/i)==x/i&i!=x){
      return(FALSE)
      break
    }
    if(i==x){
      return(TRUE)
    }
  }
}

x<-600851475143
q<-1
pfactors<-c()
for (i in 2:sqrt(x)) {
  if(x %% i == 0){
    if(isPrime(i)==TRUE){
      pfactors[q]<-i
      q<-q+1
    }
  }  
}

max(pfactors)
