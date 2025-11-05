#Problem:
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we 
# get 3,5, 6, and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

mySum<-0
naturalNumbers<-c()
for (i in 1:999){
  isThree<-trunc(i/3)==i/3
  isFive<-trunc(i/5)==i/5
  if(isThree==T|isFive==T){
    naturalNumbers[slot]<-i
    mySum<-mySum+i
  }  
}

mySum
