=begin

You are going to be given an array of integers

Find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N

If there is no index that satisfies this condition, return -1

# PROBLEM:
- input: array of integers
- output: index N that splits the array into equal sums
          -1 if there is no index that satisfies this requirement
   
# Rules/Requirements
- Don't include the integer that we are splitting on

# Questions:



# Examples:


# DATA STRUCTURES


# ALGORITHM
- Iterate over each index of the array
  - Generate the two subarrays which result from splitting the array at that index
  - If the sum of each of the two subarrays are equal , return the index
- Return -1

generate_subarrays(array, idx)
- array[0...idx], array[idx+1..-1]
=end

def gen_subarrays(array, idx)
  return array[0...idx], array[idx+1..-1]
end

def find_even_index(array)
  (0..array.length-1).each do |idx|
    l_subarr, r_subarr = gen_subarrays(array, idx)
    return idx if l_subarr.sum == r_subarr.sum
  end
  -1
end

# p gen_subarrays([1, 2, 3, 4, 3, 2, 1], 3)

p find_even_index([1,2,3,4,3,2,1]) # 3
p find_even_index([1,100,50,-51,1,1]) # 1
p find_even_index([1,2,3,4,5,6]) # -1
p find_even_index([20,10,30,10,10,15,35]) # 3
p find_even_index([20,10,-80,10,10,15,35]) # 0

        