# input: integer
# output: boolean

# rules: 
#     Explicit requirements:
#     - A year is a leap year if:
#       - It's evenly divisible by 4
#       - Unless it's divisible by 100
#         - If it is, then it is a leap year if it's evenly divisible by 400.

def leap_year?(year)
  (year % 4).zero? && (year % 100 != 0 || (year % 400).zero?)
end


puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true