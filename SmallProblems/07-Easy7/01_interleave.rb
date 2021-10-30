# input: two arrays
# output: lists zipped together

# rules:
#   Explicit Requirements
#     - Both arrays are non-empty
#     - Both arrays have the same number of elements

# Algorithm:
# - Zip the lists together. Flatten the result.
# - Iniitialize empty result array
# - Range index from 0 to len-1
#   - push arr1[i]
#   - push arr2[i]
# - Return result array


def interleave1(arr1, arr2)
  arr1.zip(arr2).flatten
end

def interleave(arr1, arr2)
  result = []
  arr1.length.times do |i|
    result << arr1[i] << arr2[i]
  end
  result
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']