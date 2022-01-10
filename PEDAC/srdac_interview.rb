=begin
# Given an array of n positive integers and a positive integer s, 
find the minimal length of a contiguous subarray of which the sum ≥ s. 
If there isn't one, return 0 instead.


# PROBLEM:
- input: array of integers, integer
- output: integer

# Rules/Requirements
- Input array is of n positive integers
- Input integer is positive integer
- Finding smallest length of continuous subarray which sums to greater or equal to s
  - If no subarray exists that satisfies this, return 0
  - If find one number >= s then return 1

# Questions:


# Examples:
# p minSubLength([2,3,1,2,4,3], 7) == 2
# p minSubLength([1, 10, 5, 2, 7], 9) == 1
# p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
# p minSubLength([1, 2, 4], 8) == 0

# DATA STRUCTURES
- Start and stop integers indexing in to subarray

=begin
# ALGORITHM
- Initialize min_len = Infinity
- Generate all subarrays:
  - For start, iterate up to `length - 2`
  - For last, iterate from start up to `arr.length - 1`
    - if sum >= s and len = (start - last + 1) < min_len, store len in min_len
- If min_len is infinite return 0
      - Else return min_len


=end

def minSubLength(arr, s)
  min_len = Float::INFINITY

  0.upto(arr.length - 1) do |start|
    start.upto(arr.length - 1) do |last|
      sum = arr[start..last].sum
      len = last - start + 1

      if sum >= s && len < min_len
        min_len = len
      end
    end
  end
  min_len.infinite? ? 0 : min_len
end

p minSubLength([2,3,1,2,4,3], 7)                            #== 2
p minSubLength([1, 10, 5, 2, 7], 9)                         #== 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280)  #== 4
p minSubLength([1, 2, 4], 8)                                #== 0
# binding.pry