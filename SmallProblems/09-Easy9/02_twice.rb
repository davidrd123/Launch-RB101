# input: integer 
# output: number with even number of digits 
#   - whose L-side digits are the same as its R-side digits

# rules:
#   Implicit Requirements:
#   - 

# Algorithm:
# - Screen whether number is a double number
#   - If not, return 2*num
#   - If so, return as-is

# double_num?(num)
# if num digits is odd, return false
# if num digits is even,
#   - convert num to string
#   - first_half == second_half
#     - Split point = num_str.length / 2 - 1
#   - 6 digits: num_str[0..2] == num_str[3..6]

def double_num?(num)
  num_chrs = num.to_s.chars
  return false if num_chrs.length.odd?

  lhs, rhs = num_chrs.partition
                     .with_index {|_, idx| idx < num_chrs.length / 2 }
                     .map(&:join)
  lhs == rhs
end


# def double_num?(num)
#   num_str = num.to_s
#   return false if num_str.length.odd?

#   middle = num_str.size / 2 - 1
#   lhs = num_str[0..middle]
#   rhs = num_str[(middle + 1)..-1]
#   lhs == rhs
# end

def twice(num)
  double_num?(num) ? num : num * 2
end


p twice(37)                       == 74
p twice(44)                       == 44
p twice(334433)                   == 668866
p twice(444)                      == 888
p twice(107)                      == 214
p twice(103103)                   == 103103
p twice(3333)                     == 3333
p twice(7676)                     == 7676
p twice(123_456_789_123_456_789)  == 123_456_789_123_456_789
p twice(5)                        == 10
p twice(0)