# input: integer `n`
# output: print triangle to stdout

# rules:
#   Explicit Requirements
#     - First line is blank
#     - Next line has one star, n - 1 spaces in front
#     - Last line is all stars

# Algorithm
# - count from 0 to n
# - print n - count spaces, count stars on each line


def triangle(num)
  (0..num).each do |i|
    puts ' ' * (num - i) + '*' * i
  end
end

triangle (5)