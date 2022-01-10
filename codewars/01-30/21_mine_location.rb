=begin

You've just discovered a square (NxN) field and you notice a warning sign. 
The sign states that there's a single bomb in the 2D grid-like field in front of you.

Write a function mineLocation/MineLocation that accepts a 2D array, and returns 
the location of the mine. 

The mine is represented as the integer 1 in the 2D array. 

Areas in the 2D array that are not the mine will be represented as 0s.

The location returned should be an array (Tuple<int, int> in C#) where the 
first element is the row index, and the second element is the column index of 
the bomb location (both should be 0 based). 

All 2D arrays passed into your function will be square (NxN), and there will 
only be one mine in the array.


# PROBLEM:
- input: 2d array representing a NxN field
- output: [row_idx, col_idx] of the 1
   
# Rules/Requirements


# Questions:



# Examples:
p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) == [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) == [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) == [2, 1]
p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]



# DATA STRUCTURES


# ALGORITHM
mindLocation(arr)
- Find the dimensions of the minefield -> N
  - Length of the first element
- for i in range(N)
  - for j in range(N)
    if arr[i][j] == 1 return [i, j]

=end

def mineLocation(arr)
  n = arr[0].size
  (0..n-1).each do |i|
    (0..n-1).each do |j|
      return [i,j] if arr[i][j] == 1
    end
  end
end



p mineLocation( [ [1, 0, 0], [0, 0, 0], [0, 0, 0] ] ) #== [0, 0]
p mineLocation( [ [0, 0, 0], [0, 1, 0], [0, 0, 0] ] ) #== [1, 1]
p mineLocation( [ [0, 0, 0], [0, 0, 0], [0, 1, 0] ] ) #== [2, 1]
p mineLocation([ [1, 0], [0, 0] ])                    #== [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ])   #== [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) #== [2, 2]

=begin
LESSONS:
  - Iteration, zero-indexing
=end