=begin

Write a method that can rotate the last n digits of a number.

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

# PROBLEM:
- input: integer digits, integer n
- output: integer
   
# Rules/Requirements
- Rotate the last n digits

# Questions:



# Examples:
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

# DATA STRUCTURES


# ALGORITHM
- COnvert the input digits into character array
- Split that array into the portion to keep the same and the portion to rotate
  -
- Rotate the right half
- Join the portions back together
- Convert into integer and return


=end

def rotate_array(arr)
  arr[1..-1] + [arr.first]
end

def split_digits(char_arr, n)
  first_half = char_arr[...-n]
  second_half = char_arr[-n..]
  return first_half, second_half
end

def rotate_rightmost_digits(digits, n)
  digits = digits.to_s.chars
  first_half, second_half = split_digits(digits, n)
  second_half = rotate_array(second_half)
  digits = first_half + second_half
  digits.join.to_i
end

# p split_digits(735291.to_s.chars, 3)

p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) #== 735219
p rotate_rightmost_digits(735291, 3) #== 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917