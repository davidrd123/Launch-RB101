# input: integer
# output: string

# rules:
#   Explicit Requirements
#     - The input number is >= 0
#     - Do not use any of the standard conversion methods 
#     - Return the string representation of the number

# Notes:
# Easier to build up string in reverse
#   So make reversed array of integer digits 
#     Convert each digit
#     Reverse array
#     Return joined array

# Algorithm:
# Initialize result variable as empty array
# Make reversed integer digit array:
#   Iterate 
#     - rest, digit = divmod(number, 10)
#     - Append digit to result array
#     - Break when rest == 0
# Reverse then join array -> result string
# Return result string

require 'pry'

INT_TO_STR = ('0'..'9').to_a

def integer_to_string(num)
  result = []
  loop do
    num, digit = num.divmod(10)
    result.unshift(INT_TO_STR[digit])
    break if num.zero?
  end
  result.join('')
end


p integer_to_string(4321) #== '4321'
p integer_to_string(0)    #== '0'
p integer_to_string(5000) #== '5000'

# binding.pry