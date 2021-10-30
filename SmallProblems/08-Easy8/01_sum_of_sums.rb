# input: array of integers
# output: integer (sum of each 'leading subsequence')

# rules:
#   Explicit Requirements
#   - Array always contains at least one integer
#   - Leading subsequence:
#     - The array up to that number


# Algorithm:
# - Generate array of leading subsequences
#   - Initialize empty subseqs array
#   - Iterate index from 0..len-1, iterate over index
#     - subseqs << arr[0..idx]
# - Return the sum over subseqs
#   subseqs.reduce {|acc, subseq| acc + subseq.reduce(0, &:+) }
#   OR
#   subseqs.flatten.sum

def sum_of_sums1(arr)
  subseqs = []
  (0..arr.length - 1).each do |idx|
    subseqs << arr[0..idx]
  end
  subseqs.flatten.sum
end

def sum_of_sums(arr)
  arr.map.with_index { |_, idx| arr[0..idx] }.flatten.sum
end



p sum_of_sums([3, 5, 2])        #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3])     #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4])              #== 4
p sum_of_sums([1, 2, 3, 4, 5])  #== 35