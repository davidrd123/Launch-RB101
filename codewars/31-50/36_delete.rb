=begin

Given an integer n, find the maximal number you can obtain by deleting exactly 
one digit of the given number.

Example
For n = 152, the output should be 52;

For n = 1001, the output should be 101.

Input/Output
[input] integer n

Constraints: 10 ≤ n ≤ 1000000.

[output] an integer




# PROBLEM:
- input: integer
- output: integer
   
# Rules/Requirements
- Find max number you can get by deleting one digit of the given number

# Questions:



# Examples:
p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1

# DATA STRUCTURES


# ALGORITHM

delete_digit_at(num, exp) # exp is power of 10 for digit
  - Convert num to string
  - Convert string to chars
  - Reverse array
  - Delete digit at exp index
  - Reverse array
  - Join array, convert to integer
  - Return


gen_deleted_digits(num)
  - Initialize result to []
  - Generate array of integers from num with one digit deleted:
    - Iterate from 0 to number of digits of num - 1 -> idx
      - Append to result the result of deleting the digit at idx
  - Return result

delete_digit(num)
  - Generate all possible numbers that fit criterion
  - Return maximum of those numbers
=end

def num_digits(num)
  num.to_s.length
end

def delete_digit_at(num, exp)
  rev_num_arr = num.to_s.chars.reverse
  rev_num_arr.delete_at(exp)
  rev_num_arr.reverse.join.to_i
end

def gen_deleted_digits(num)
  result = []
  (0..num_digits(num)-1).each do |idx|
    result << delete_digit_at(num, idx)
  end
  result
end

def delete_digit(num)
  gen_deleted_digits(num).max
end


# p delete_digit_at(152, 0) # 15
# p delete_digit_at(152, 1) # 12
# p delete_digit_at(152, 2) # 52

# p gen_deleted_digits(152)

p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1