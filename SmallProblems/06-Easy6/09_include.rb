# input: array, search value
# output: bool (whether search val is in array)

# rules: 
#   Explicit Requirements
#     - Return true if search val is in array
#       - Return false if not
#     - You may not use Array#include?

# Algorithm:
# - Iterate over array
#   - Compare curr value to search val
#   - Return true if match
# - Return false if looked at everything but no match

def include?(arr, val)
  arr.each do |elem| { return true if elem == val }
  false
end



p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false