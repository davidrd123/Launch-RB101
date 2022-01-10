=begin

# For "x", determine how many positive integers less than or equal to "x" are 
odd but not prime. Assume "x" is an integer between 1 and 10000.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, 
  so the answer is 1
# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, 
  so the answer is 2

# A prime number (or a prime) is a natural number greater than 1 that has no 
positive divisors other than 1 and itself.

p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20

=begin
# PROBLEM:
- input: positive integer 
- output: positive integer (count of ints that satisfy conditions)

Find the number of positive numbers <= x that are odd but not prime
   
# Rules/Requirements
- Determine how many positive integers <= x are odd but not prime
- x is in [1, 1000]
- 1 is not prime!

# DATA STRUCTURES


# ALGORITHM
High-Level:
- Step through odd numbers up to num, keep only if not prime, return count
  
Implementation:
- Filter range from 1..num (stepping by 2 to get odds): !prime? -> result array
- Return length of result array

prime?(n)
  - Return false for 1
  - Check all numbers from 2...n -> i (iterate over range |i|)
    - If any divides into n (n % i == 0) then false
  - Return true
=end

def odd_not_prime(num)
  (1..num).step(2).filter { |x| !prime?(x) }.length
end

def prime?(num)
  return false if num == 1
  return false if (2...num).any? { |i| (num % i).zero? }

  true
end

# binding.pry

# def prime?(num)
#   return false if num == 1

#   (2...num).each do |i|
#     return false if (num % i).zero?
#   end
#   true
# end

# p prime?(2) # false
# p prime?(7) # true
# p prime?(8) # false
# p prime?(11) # false
# p prime?(13) # false
# binding.pry


p odd_not_prime(15) #== 3
p odd_not_prime(48) #== 10
p odd_not_prime(82) #== 20