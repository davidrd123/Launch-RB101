# input: string
# output: signed number

# rules:
#     Explicit requirements
#       - Assume the string will always contain a valid number
#       - You can't use any of the standard conversion methods


# Algorithm:
# - Initialize variable to flag negative sign to false
# - Test first character of string for '+' or '-'
#   - If present, shift that character off the string
#   - If '-', set negative flag to true
# - Apply Problem 7 alg to remaining number
# - If negative flag, multiply number by -1
# - Return result

def string_to_integer(str)
  rev_digit_arr = str.chars.reverse.map { |digit| digit.ord - '0'.ord }
  result = 0
  rev_digit_arr.each.with_index do |digit, pow|
    result += 10**pow * digit
  end
  result
end

def string_to_signed_integer(str)
  negative = false
  if %w[+ -].include?(str[0])
    sign = str.slice!(0)
    negative = true if sign == '-'
  end
  result = string_to_integer(str)
  negative ? -result : result
end



puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100