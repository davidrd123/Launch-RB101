# input: array of integers
# output: print mult avg to stdout

# rules:
#   Explicit Requirements
#   - Print result rounded to 3 decimal places
#   - Assume array is non-empty

# Algorithm:
# - reduce array with 1, * to get produce
# - divide by arr.length 
# - print using round(3) X
#   - using format %03.d

def show_multiplicative_average(arr)
  avg = arr.reduce(1.0, &:*) / arr.length
  puts format('The result is %.3f', avg)
end





show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667