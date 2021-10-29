# input: array
# output: new array with elements of original list in reversed order

# rules: 
#   Explicit Requirements
#     - Do not modify the original list
#     - You may not use Array#reverse or Array#reverse!

# Algorithm:
# - Create new empty result array
# - Iterate over each element of the input array in order:
#   - unshift each element in turn onto the front of the result array
# - Return the result array


def reverse(array)
  array.each_with_object([]) { |elem, result| result.unshift(elem) }
end


p reverse %w(a b c d e)

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true