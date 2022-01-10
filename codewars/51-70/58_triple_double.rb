=begin

Write a function

triple_double(num1, num2)
which takes numbers num1 and num2 and returns 1 if there is a straight triple 
of a number at any place in num1 and also a straight double of the same number in num2.

If this isn't the case, return 0


# PROBLEM:
- input: two integers
- output: integer (0 or 1)
   
# Rules/Requirements
- Return 1 if there is a string of 3 of the same numbers in a row in num1
  AND a string of 2 of the smae number in num2
  - The number that is repeated in both num1 & num2 is the same number.

# Questions:



# Examples:
p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1


# DATA STRUCTURES


# ALGORITHM
- Iterate over 0-9
  - Check if there is a 'straight triple' in num1 + 'straight double' in num2

check(num1, num2, digit)
- Checks if digit.to_s * 3 is in num1.to_s
      and digit.to_s *2 is in num2.to_s
=end

def check(num1, num2, digit)
  num1.to_s.include?(digit.to_s * 3) && num2.to_s.include?(digit.to_s * 2)
end

def triple_double(num1, num2)
  (0..9).each do |digit|
    return 1 if check(num1, num2, digit)
  end
  0
end

# p check(666789, 12345667, 6) # true
# p check(666789, 12345667, 5) # false

p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1