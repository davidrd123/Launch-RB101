=begin

Write a function, persistence, that takes in a positive parameter num and 
returns its multiplicative persistence, which is the number of times you must 
multiply the digits in num until you reach a single digit.

For example:

 persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                 # and 4 has only one digit

 persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                  # 1*2*6=12, and finally 1*2=2

 persistence(4) # returns 0, because 4 is already a one-digit number


# PROBLEM:
- input: integer
- output: integer
   
# Rules/Requirements
- Find the number of times the digits of the input integer need to be multiplied
  together until you get a single-digit number
- If the input integer is a single-digit number, return 0

# Questions:



# Examples:


# DATA STRUCTURES
- counter (integer) initialized to 0

# ALGORITHM
input: integer
output: integer
persistence(num)
- Initialize counter to 0
- Loop:
  - If num is single-digit, return counter
  number <- condense(number)
  counter += 1

input: integer
output: integer
condense(num)
  - Convert num to array of digits
  - return result of Multiplying all digits together 

input: integer
output: integer
num_digits(num)
  - convert num to array of chars
  - return length of array
=end

def condense(num)
  num.to_s.chars.map(&:to_i).reduce(1, :*)
end

def num_digits(num)
  num.to_s.chars.length
end

def persistence(num)
  counter = 0
  loop do
    return counter if num_digits(num) == 1

    num = condense(num)
    counter += 1
  end
end

# p num_digits(1234)
# p condense(123)   # 6
# p condense(1234) # 24

p persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
                 # and 4 has only one digit

p persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
                  # 1*2*6=12, and finally 1*2=2

p persistence(4) # returns 0, because 4 is already a one-digit number