is.Prime <- function(num) {
  if (num == 2) {
    TRUE
  } else if (any(num %% 2:sqrt(num) == 0)) {
    FALSE
  } else { 
    TRUE
  }
}

primes<-c()
pos<-1
for (i in 1:1000000) {
  if (is.Prime(i)==T) {
    primes[pos]<-i
    pos<-pos+1
    if(length(primes)==10001){
      print(primes[length(primes)])
      break
    }
  }
}

