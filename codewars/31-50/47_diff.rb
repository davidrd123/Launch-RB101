=begin

Your goal in this kata is to implement a difference function, 
which subtracts one list from another and returns the result.

It should remove all values from list a, which are present in list b.


# PROBLEM:
- input: two arrays
- output: array
   
# Rules/Requirements
- Return the array produced by removing all values from the first list
  which are in the second list

# Questions:



# Examples:
p array_diff([1,2], [1]) == [2]
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []


# DATA STRUCTURES


# ALGORITHM


=end

def array_diff(arr1, arr2)
  arr1.difference(arr2)
end

p array_diff([1,2], [1]) == [2]
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []