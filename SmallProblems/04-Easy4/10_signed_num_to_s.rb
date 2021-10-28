# input: signed integer
# output: string

# algorithm:
#   - get sign of number with num <=> 0
#     - if 0, return int_to_s(num)
#     - if 1, return '+' + int_to_s(num)
#     - if -1, return '-' + int_to_s(-num)



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

def signed_integer_to_string(num)
  case num <=> 0
  when 0 then integer_to_string(num)
  when 1 then '+' + integer_to_string(num)
  when -1 then '-' + integer_to_string(-num)
  end
end



puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'