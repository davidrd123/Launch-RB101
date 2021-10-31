# input: array
# output: array with first element moved to end

# rules:
#   Explicit Requirwements
#   - Original Array shouldn't be modified

# Algorithm
#   - return arr[1..-1] + [arr.first]

def rotate_array(arr)
  arr[1..-1] + [arr.first]
end


p rotate_array([7, 3, 5, 2, 9, 1])  == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c'])     == ['b', 'c', 'a']
p rotate_array(['a'])               == ['a']

x = [1, 2, 3, 4]
p rotate_array(x)                   #== [2, 3, 4, 1]   # => true
p x                                 #== [1, 2, 3, 4]                 # => true