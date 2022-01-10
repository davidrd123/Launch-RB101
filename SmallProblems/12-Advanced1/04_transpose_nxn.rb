

require 'pry'


def transpose(matrix)
  # Rows & cols of transposed matrix (already swapped)
  num_cols = matrix.size
  num_rows = matrix[0].size
  # Initialize matrix with transposed dims filled with 0's
  m = Array.new(num_rows).map { Array.new(num_cols).map { |_| 0 } }
  (0..num_rows-1).each do |row|
    (0..num_cols-1).each do |col|
      m[row][col] = matrix[col][row]
    end
  end
  m
end



p transpose([[1, 2, 3, 4]])       #== [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) #== [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) #==
  #[[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) #== [[1]]

binding.pry