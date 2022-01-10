=begin

Write a method that rotates an array by moving the first element to the end of 
the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.



# PROBLEM:
- input: array
- output: array
   
# Rules/Requirements
- Rotate an array by moving the first element to the end of the array
- Don't modify the original array

# Questions:



# Examples:
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

# DATA STRUCTURES


# ALGORITHM
- Create a new array by slicing the input array from the second element to
  the last element and appending to that an array consisting of the first element
  of the input array
- Return that array
=end

def rotate_array(arr)
  arr[1..-1] + [arr.first]
end


p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true