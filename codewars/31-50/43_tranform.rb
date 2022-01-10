=begin

Given a List [] of n integers , find the minimum number to be inserted in a list, 
so that the sum of all elements of the list should equal the closest prime number .

Notes
List size is at least 2 .

List's numbers will only have positives (n > 0) .

Repetition of numbers in the list could occur .

The newer list's sum should equal the closest prime number .



# PROBLEM:
- input: list of integers
- output: number to append to list to make sum come out to the nearest
  prime integer (nearest to the sum of the input list)
   
# Rules/Requirements
- List size at least 2
- List numbers all positive
- Repetition is possible
- New list sums to closest prime 
  - Closest prime to the sum of the input list
+ If list sums to a prime, return 0

# Questions:



# Examples:
p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2


# DATA STRUCTURES


# ALGORITHM
- Sum list -> list_total
- Find next prime up from list_total
- Return next_prime - list_total

gen_next_prime(num):
- Count up from num starting at num -> i
- Return i if prime


=end
# require 'pry'


def gen_next_prime(num)
  (num..).each do |n|
    return n if prime?(n)
  end
end

def prime?(num)
  (2..Math.sqrt(num)).each do |i|
    return false if (num % i).zero?
  end
  true
end

def minimum_number(arr)
  list_total = arr.sum
  next_prime = gen_next_prime(list_total)
  next_prime - list_total
end  

# p prime?(3)  # true
# p prime?(4)  # false
# p prime?(6)  # false
# binding.pry

# p next_prime(3) # 3
# p next_prime(4) # 5
# p next_prime(12) # 13
# p next_prime(26) # 29

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2