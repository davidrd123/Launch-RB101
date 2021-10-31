# input: integer
# output: integer (max rotation of input)

# rules:
# - Max Rotation:
#   - Rotate number
#   - Keep first digit fixed, rotate rest
#   - Keep first 2 digits fixed, rotate rest
#     ...
#   - Rotate final 2 digits

# Algorithm
# - For index = num.len .. 2 do
#     rrd(num, index)
# ...
require 'pry'

def rotate_array(arr)
  arr[1..-1] + [arr.first]
end

def rotate_rightmost_digits(num, num_digits)
  char_arr = num.to_s.chars
  n = char_arr.length
  lhs = char_arr.slice(0, n - num_digits)
  rhs = char_arr.slice(-num_digits, num_digits)
  (lhs + rotate_array(rhs)).join.to_i
end

def max_rotation(num)
  num.to_s.size.downto(2) do |n|
    num = rotate_rightmost_digits(num, n)
  end
  num
end


p max_rotation(735291)          #== 321579
p max_rotation(3)               #== 3
p max_rotation(35)              #== 53
p max_rotation(105)             #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146)   #== 7_321_609_845