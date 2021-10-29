# input: one array
# outpt: a pair of nested arrays

# rules:
#   Explicit Requirements:
#     - first array contains first half of input array,
#     - second array contains second half of input array
#     - If the original array contains an odd # of elements, 
#       the middle element should be placed in the first array

# Algorithm
#   - Use arr.partition with block
#     - Partition on index < arr.length / 2
#     if len = 5, then 5/2 = 2.. so [0, 1] go in first array
#       ODD so handle edge case separately: 
#         index = N/2 -> true

def halvsies(arr)
  arr.partition.with_index do |_, index|
    n = arr.length / 2
    arr.length.odd? ? index <= n : index < n
  end
end


p halvsies([1, 2, 3, 4])    == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5])             == [[5], []]
p halvsies([])              == [[], []]