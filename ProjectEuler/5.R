#Problem: 
# 2520 is the smallest number that can be divided by each of the numbers from 1 
# to 10 without any remainder.
# What is the smallest positive number that is evenly divisible divisible with 
# no remainder by all of the numbers from 1 to 20
    
x<-11:20

for (i in seq(20,1000000000, by = 20)){
  divList<-c()
    for (j in x) {
      divList[j-10]<-i%%j
      if(sum(divList)>0){
        break
      }
    }
  if (sum(divList)==0) {
    print(i)
    break
  }
}

# Explanation:
# To begin with, we do not need to search if each number between 1 and our answer
# is dividable by all numbers between 1 and 20, as by virtue of being divisible
# by 20, we know it is also divisible by all factors of 20. This is also true
# for all factors of 19m 18, 17, and so on. So if we exclude all numbers in our 
# range of interest which are factors of higher numbers also in our range. So if 
# we check only numbers from 11 t0 20, we have cut our number of checks in half
# making this 2x more efficient.

# Our next step to become more efficient is to realize that we do not need to 
# test every single number between 1 and infinity. That is because we know each
# number must be divisible by 20. We also know that between 0 and some number,
# say 100 for example, there will be more numbers divisible by numbers less than 
# 20, than there are that are divisible by 20 itself. This is obvious as 100/20 
# provides us a smaller number than 100/n where n is some integer less than 20. 
# As such, we only need to check all values which are multiples of 20 (20,40,60...)
# this makes us 20x more efficient at solving this problem. 