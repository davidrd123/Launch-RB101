=begin

Write a function with the signature shown below:

def is_int_array(arr)
  true
end
returns true / True if every element in an array is an integer or a float with no decimals.
returns true / True if array is empty.
returns false / False for every other input.


# PROBLEM:
- input: array
- output: boolean
   
# Rules/Requirements
- Returns false if the input isn't an array
- Returns true if the input array is:
  - Empty 
    OR
  - Every element in the array is either an integer or a float with no decimals
+ Integers can be both positive and negative

# Questions:



# Examples:
[1, 2, 3, 4] # true
[-11, -12, -13, -14] # true
[1.0, 2.0, 3.0] # true
[1, 2, nil] # false
[1.0, 2.0, 3.0001] # false
""  # false 
["-1"] # false

# DATA STRUCTURES


# ALGORITHM
- If the input isn't an array, return false
- If the input is an empty array, return true
- If any of the elements of the array are not an integer or a float with no decimals,
  return false
- Return true

is_integer?(num)
  num == num.to_i
end

is_array?(object)


=end

def is_integer?(num)
  num == num.to_i
end

def is_array?(object)
  object.is_a?(Array)
end

def is_int_array(array)
  return false unless is_array?(array)
  return true if array.empty?

  return false if array.any? { |elem| !is_integer?(elem) }
  true
end

# p is_integer?(4) # true
# p is_integer?(4.1) # false
# p is_integer?("3") # false
# p is_integer?(nil) # false

# p is_array?([2, 3, 4]) # true
# p is_array?("3") # false
# p is_array?(nil) # false


p is_int_array([1, 2, 3, 4]) # true
p is_int_array([-11, -12, -13, -14]) # true
p is_int_array([1.0, 2.0, 3.0]) # true
p is_int_array([1, 2, nil]) # false
p is_int_array([1.0, 2.0, 3.0001]) # false
p is_int_array("")  # false 
p is_int_array(["-1"]) # false