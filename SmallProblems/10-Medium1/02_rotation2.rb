# input: integer (number to rotate), integer (num digits to rotate)
# output: rotated number

# rules:
#   Explicit Requirements
#     - Rotating just 1 digit -> original number
#     - n is always positive
#   Implicit Requirements:
#     - When n > length of num, same as n == length of num
#     - n <= length

# Algorithm
# Convert integer to char array
# Split the char array at num_digits from rhs
# Concatenate unchanged lhs + rotated rhs, join to make string, convert to_i

def rotate_rightmost_digits(num, num_digits)
  char_arr = num.to_s.chars
  n = char_arr.length
  lhs = char_arr.slice(0, n - num_digits)
  rhs = char_arr.slice(-num_digits, num_digits)
  (lhs + rotate_array(rhs)).join.to_i
end

def rotate_array(arr)
  arr[1..-1] + [arr.first]
end



p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) #== 735219
p rotate_rightmost_digits(735291, 3) #== 735912
p rotate_rightmost_digits(735291, 4) #== 732915
p rotate_rightmost_digits(735291, 5) #== 752913
p rotate_rightmost_digits(735291, 6) #== 352917