=begin

A featured number (something unique to this exercise) is an odd number that is 
a multiple of 7, and whose digits occur exactly once each. So, for example, 
49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not 
a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next 
featured number that is greater than the argument. Return an error message if 
there is no next featured number.


# PROBLEM:
- input: integer
- output: next featured # greater than the argument
   
# Rules/Requirements
- Featured number:
  - Odd #
  - Multiple of 7
  - Digits occur once each

# Questions:



# Examples:
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements


# DATA STRUCTURES


# ALGORITHM
- Iterate up from 1 + input number
- Filter on if featured?
- Raise error if num_digits > 10

=end
require 'pry'

def uniq?(num)
  num.digits == num.digits.uniq
end

def start(num)
  (num+1..).lazy.find { |n| n % 7 == 0 && n.odd? }
end

def featured(num)
  next_featured = (start(num)..9_999_999_999).step(14).find { |n| uniq?(n) }
  next_featured.nil? ? 'No next featured number' : next_featured
end
binding.pry

p featured(12)       #== 21
p featured(20)       #== 21
p featured(21)          #== 35
p featured(997)         #== 1029
p featured(1029)        #== 1043
p featured(999_999)     #== 1_023_547
p featured(999_999_987) #== 1_023_456_987
p featured(1_000_000_000_000)