=begin

Create a method called "power" that takes two integers and returns the value of 
the first argument raised to the power of the second. Return nil if the second 
argument is negative.


# PROBLEM:
- input: two integers
- output: integer (or nil if the second arg is negative)
   
# Rules/Requirements
- Not use **
- Base and exp are integers

# Questions:



# Examples:
p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil


# DATA STRUCTURES


# ALGORITHM
power(base, exp)
- Return nil if exp is negative
- Return 1 if exp is 0
- Return base * power(base, exp - 1)

=end

def power(base, exp) 
  return nil if exp.negative?
  return 1 if exp.zero?
  base * power(base, exp - 1)
end

p power(2, 3) == 8
p power(10, 0) == 1
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil