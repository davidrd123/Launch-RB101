=begin

Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns 
the transpose of the original matrix. Note that there is a Array#transpose 
method that does this -- you may not use it for this exercise. You also are not 
allowed to use the Matrix class from the standard library. Your task is to do this yourself.


# PROBLEM:
- input: array with 3 subarrays (rows of matrix)
- output: array with 3 subarrays (rows of matrix), orig matrix transposed
   
# Rules/Requirements


# Questions:



# Examples:


# DATA STRUCTURES


# ALGORITHM
Make copy of matrix
  Swap elements 01 & 10, 02 & 20, 12 & 21
Retrn copy
=end

require 'pry'

def transpose(matrix)
  m = Array.new(3).map { Array.new(3).map { |_| 0 } }
  (0..2).each do |row|
    (0..2).each do |col|
      m[row][col] = matrix[col][row]
    end
  end
  m
end

def transpose!(matrix)
  (0..1).each do |row|
    (1..2).each do |col|
      matrix[row][col], matrix[col][row] = matrix[col][row], matrix[row][col]
    end
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]


new_matrix = transpose(matrix)

p new_matrix  #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix      #== [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
binding.pry