=begin

If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 
below the number passed in.

Note: If the number is a multiple of both 3 and 5, only count it once.


# PROBLEM:
- input: integer
- output: integer
   
# Rules/Requirements
- Return the produce of all the integers below the input integer which are
  multiples of 3 or 5

# Questions:



# Examples:
p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168


# DATA STRUCTURES


# ALGORITHM
solution(num)
- Filter all the integers from 1..num-1 to obtain those which are multiples
  of 3 or 5, then take the sum of those numbers

gen_multiples(num)
  - Return array of numbers from 1..num-1 that are multiples of 3 or 5
=end

def gen_multiples(num)
  (1...num).filter {|x| x % 3 == 0 || x % 5 == 0}
end

def solution(num)
  gen_multiples(num).sum
end

p gen_multiples(10)

p solution(10)  #== 23
p solution(20)  #== 78
p solution(200) #== 9168



