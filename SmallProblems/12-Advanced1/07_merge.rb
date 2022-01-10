=begin

# PROBLEM:
- input: two sorted array
- output: a new merged array with all elements of the two in sorted order
   
# Rules/Requirements
- If one array is empty, result array is just the other array
- If same value for first element of each array, choose first array
- At least one array is nonempty

# Questions:



# Examples:


# DATA STRUCTURES
- Two indices to track current pointer for each array

# ALGORITHM
- Initialize result array
- Two indices initialized to 0
- Loop until we get to the end of both input arrays
  - Compare the elements of each array at respective pointers
  - Copy the smaller one to the result array, increment pointer
  - Once we reach the end of one array, just append the rest of 
    the other array to result

=end

def merge(arr1, arr2) 
  idx1 = 0
  idx2 = 0
  result = []

  loop do
    if arr1[idx1].nil? 
      return result + arr2[idx2..]
    elsif arr2[idx2].nil?
      return result + arr1[idx1..]
    end

    if arr1[idx1] <= arr2[idx2] 
      result << arr1[idx1]
      idx1 += 1
    else
      result << arr2[idx2]
      idx2 += 1
    end
  end
end

p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2])    #== [1, 1, 2, 2, 3]
p merge([], [1, 4, 5])        #== [1, 4, 5]
p merge([1, 4, 5], [])        #== [1, 4, 5]