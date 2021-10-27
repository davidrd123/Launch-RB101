require 'pry'

# input: integer (year)
# output: string (cardinal number matching century of year)

# rules:
#     Explicit Requirements:
#       - new centuries begin in years that begin with 01
#     Implicit Requirements:
#       - input year is positive and >= 01



# Clarifying Questions:
#   -

# Algorithm:
#   - Extract out multiple of 100 from year -> num_century
#     - (year / 100) + 1 => num_century
#     - Handle edge case for year % 100 == 0 -> num_century = num_century - 1
#   - Handle ordinal part with hash map for 1-9
#     - Extract ones digit from num_century -> ordinal_digit
#     - Index into the hash map with ordinal_digit
#   - Convert num_century -> string
#   - Return concatenated strings of century + ordinal

DIGIT_TO_ORDINAL = {
  0 => 'th',
  1 => 'st',
  2 => 'nd',
  3 => 'rd',
  4 => 'th',
  5 => 'th',
  6 => 'th',
  7 => 'th',
  8 => 'th',
  9 => 'th'
}

def calc_ordinal(century)
  ones = century % 10
  teens = century % 100
  case teens
  when 11 then return 'th'
  when 12 then return 'th'
  when 13 then return 'th'
  end

  case ones
  when 0 then 'th'
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

def century(year)
  num_century = year / 100 + 1
  ones_digit = year % 100
  num_century -= 1 if ones_digit.zero?
  ordinal_string = calc_ordinal(num_century)

  num_century.to_s + ordinal_string
end

puts century(2000)  == '20th'
puts century(2001)  == '21st'
puts century(1965)  == '20th'
puts century(256)   == '3rd'
puts century(5)     == '1st'
puts century(10103) == '102nd'
puts century(1052)  == '11th'
puts century(1127)  == '12th'
puts century(11201) == '113th'

# binding.pry