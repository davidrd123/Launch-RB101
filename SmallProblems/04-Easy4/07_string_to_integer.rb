# input: string
# output: integer representation of the string

# rules:
#     Explicit Requirements
#       - Take a string of digits and return the integer those digits represent
#       - Assume all characters will be numeric

# Algorithm:
# - Break the string into constituent character array
# - Initialize a variable to 0 to keep track of the power of 10 of the current digit
# - Initialize the result variable to 0
# - For each digit character, starting from the rightmost character:
#   - Convert to equivalent integer
#     - Either hash map for '0'..'9'
#     - Or use (str_digit.ord - '0'.ord)
#   - Multiply by 10 ** digit_place
#   - Add this to the result variable
# - Return the result variable

def string_to_integer(str, base)
  rev_digit_arr = str.chars.reverse.map { |digit| digit.ord - '0'.ord }
  result = 0
  rev_digit_arr.each.with_index do |digit, pow|
    result += base**pow * digit
  end
  result
end


puts string_to_integer('4321', 10) == 4321
puts string_to_integer('570', 10) == 570