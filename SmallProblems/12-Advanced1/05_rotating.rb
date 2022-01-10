=begin
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
the 90-degree rotation of the matrix shown above is:
3  4  1
9  7  5
6  2  8

A 90 degree rotation of a non-square matrix is similar. 
For example, the rotation of:

3  4  1
9  7  5

is:
9  3
7  4
5  1


Write a method that takes an arbitrary matrix and rotates it 90 degrees 
clockwise as shown above.


# PROBLEM:
- input: 
- output: 
   
# Rules/Requirements


# Questions:



# Examples:


# DATA STRUCTURES


# ALGORITHM
- Initialize new matrix with transposed dimensions
- Map first row - last row => last column - first column
: Iterate over original matrix:
  - Last row goes to first column
    - Go forward through elements of row and drop into column
=end
require 'pry'


def rotate90(matrix, rotations=1)
  num_cols = matrix.size
  num_rows = matrix[0].size
  m = Array.new(num_rows).map { Array.new(num_cols).map { |_| 0 } }
  (0..num_cols-1).each do |col|
    (0..num_rows-1).each do |row|
      m[row][col] = matrix[num_cols - col - 1][row]
    end
  end
  rotations == 1 ? m : rotate90(m, rotations - 1)
end



matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

binding.pry

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 #== [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 #== [[5, 3], [1, 7], [0, 4], [8, 2]]
#p new_matrix3 == matrix2