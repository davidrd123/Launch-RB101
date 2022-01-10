=begin

In this kata, you must create a digital root function.

A digital root is the recursive sum of all the digits in a number. 

Given n, take the sum of the digits of n. If that value has more than one digit, 
continue reducing in this way until a single-digit number is produced. 

This is only applicable to the natural numbers.


# PROBLEM:
- input: integer
- output: integer
   
# Rules/Requirements
- Recursive sum all the digits of the input integer
- Sum digits
  - Return if result is single digit
  - Otherwise, repeat

# Questions:



# Examples:
p digital_root(16) == 7 
p digital_root(456) == 6 


# DATA STRUCTURES


# ALGORITHM
digital_root(num)
- Sum digits of input number
- If result is single digit, return
- Otherwise, call digitial_root on result 

sum_digits(num)
- Convert to string
- Convert to array of strings
- Convert to array of integers
- Return sum over elements of array

num_digits(num)
- Convert to string
- Return length
=end

def sum_digits(num)
  num.to_s.chars.map(&:to_i).sum
end

def num_digits(num)
  num.to_s.length
end

def digital_root(num)
  sum_of_digits = sum_digits(num)
  if num_digits(sum_of_digits) == 1
    sum_of_digits
  else
    digital_root(sum_of_digits)
  end
end

# p sum_digits(16)  # 7
# p sum_digits(456) # 15

p digital_root(16) == 7 
p digital_root(456) == 6 
p digital_root(942) == 6
p digital_root(132189) == 6