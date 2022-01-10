=begin

accepts two integer arrays of equal length
compares the value each member in one array to the corresponding member in the other
squares the absolute value difference between those two values
and returns the average of those squared absolute value difference between each member pair.


# PROBLEM:
- input: two integer arrays of equal length
- output: float
   
# Rules/Requirements
- sum the square of the abs difference between each corresponding value in the two array
- Return the average of those values

# Questions:



# Examples:
p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1


# DATA STRUCTURES


# ALGORITHM
- init result array
- take square of the diff of each value in arr1 & arr2, store in result array
- return average of values in result array

=end

def solution(arr1, arr2)
  result = []
  arr1.each.with_index do |_, idx|
    result << (arr1[idx] - arr2[idx])**2
  end
  result.sum / result.length.to_f
end

p solution([1, 2, 3], [4, 5, 6])              == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2])  == 16.5
p solution([-1, 0], [0, -1])                  == 1