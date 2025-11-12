# Problem:
# The sum of the squares of the first ten natural numbers is:
#     1^2 + 2^2 + ... + 10^2 = 385.
# The square of the sum of the first ten natural numbers is:
#     (1 + 2 + ... + 10)^2 = 55^2 = 3025.
# Hence the difference between the sum of the squares of the first ten natural 
# numbers and the square of the sum is 3025 - 385 = 2640
# Find the difference between the sum of the squares of the first one hundred 
# natural numbers and the square of the sum.

sumOfSquares<-function(min,max){
  values<-c()
  for (i in min:max) {
    values[i-min+1]<-i^2
  }
  return(sum(values))
}

squareOfSum<-function(min,max){
  return(sum(min:max)^2)
}

min<-1
max<-100

squareOfSum(min,max)-sumOfSquares(min,max)

# Explanation:
# This one is a relative lob compared to some of the other problems which require
# more problem solving and optimization.
# Here we just create two functions, one which funds the sum of the square of all
# numbers between some minimum and some maximum, then another which takes the
# sum of all numbers between a minimum and maximum, then squares it. 
# All that is left is to find the difference between those two numbers. 