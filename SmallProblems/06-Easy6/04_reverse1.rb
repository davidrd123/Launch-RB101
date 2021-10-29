# input: array
# output: array (reversed in place)

# rules
#   Explicit Requirements:
#     - Array passed in should be mutated and reversed in-place
#     - Return value should be the same Array object
#     - May not use Array#reverse or Array#reverse!

#   Edge cases:
#     - Empty array goes to itself
#     - Single element array goes to itself

# Ideas:
# - Keep a counter 
#   - Going from 0 to arr.length / 2  - 1 indexing into array from both ends
#     arr.length = N | 7 -> 7/2 - 1 = 3 - 1 = 2

#     arr[0] = arr[-1]
#     arr[1] = arr[-2]
#         ...
#     arr[N/2 - 1] = arr[-N/2]    
#   - Swap first and last elements, then second and second-to-last, etc.

# Algorithm:
# - Iterate for N/2 times -> index 0..N/2
# - 
require 'pry'


def reverse!(array)
  n = array.length / 2 - 1
  (0..n).each do |j|
    array[j], array[-(j + 1)] = array[-(j + 1)], array[j]
  end
  array
end

list = [1, 2, 3, 4]
result = reverse!(list)
p result
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w[a b c d e f g]
reverse!(list)
p list

# list = %w[abc]
# reverse!(list)
# p list

# list = []
# reverse!(list)
# p list

binding.pry