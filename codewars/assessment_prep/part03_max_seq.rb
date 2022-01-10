=begin

Find the max sum of a contiguous subsequence in an array of integers

If the array is made up of only negative numbers, return 0 instead

# PROBLEM:
- input: array of integers
- output: maximum sum of coniguous subsequence
   
# Rules/Requirements
- Empty subsequence goes to 0


# Questions:



# Examples:
max_subsequence([]) == 0
max_subsequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
max_subsequence([[11]) == 11
max_subsequence([-32]) == 0 
max_subsequence([-2, 1, -7, 4, -10, 2, 1, 5, 4] )

# DATA STRUCTURES


# ALGORITHM
- Make all coniguous subsequences -> array
- Map sum over the array
- Return max on that array

gen_subseq(arr)
subsequences = []
- (0..arr.length-1).do |i|
   (i..arr.length-1).do |j|
     subsequences << arr[i..j]
     end
     end
subsequences
=end



def gen_subseq(arr)
  subsequences = []
  (0..arr.length-1).each do |i|
    (i..arr.length-1).each do |j|
      subsequences << arr[i..j]
    end
  end
  subsequences
end

def max_sequence(array)
  return 0 if array.empty? || array.max < 0
  sequences = gen_subseq(array)
  sequences.map(&:sum).max
end

# p gen_subseq([1, 2, 3, 4])
# p max_sequence([1, 2, 3, 4])

p max_sequence([])   #== 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) #== 6
p max_sequence([11]) #== 11
p max_sequence([-32]) #== 0 
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4] ) # 12