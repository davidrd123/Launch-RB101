# input: two arrays, each of integers
# output: new array ~ product of all pairs that can be formed btw the two arrays
                      
# rules:
#   Explicit Requirements
#   - Results sorted by increasing value

# Algorithm:
#   - Create new empty result array
#   - For each element of arr1: e1
#     - For each element of arr2: e2
#       - result << e1 * e2
#   - Sort result array, return that

#   - Easier way: arr1.product(arr2), map across that with reduce(&:*)

def multiply_all_pairs1(arr1, arr2)
  result = []
  arr1.each do |e1|
    arr2.each do |e2|
      result << e1 * e2
    end
  end
  result.sort
end

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |pair| pair.reduce(1, &:*) }.sort
end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]