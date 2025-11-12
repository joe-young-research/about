# Problem:
# By listing the first six prime numbers: $2, 3, 5, 7, 11$, and 13, we can see that the $6$th prime is 13
# What is the 10,001st prime number?

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

