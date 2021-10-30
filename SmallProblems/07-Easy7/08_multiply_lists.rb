# input: an array containing two arrays of integers
# output: a new array ~ dot product of the two arrays

# Algorithm:
# Create a new empty result array
# iterate for i=0 to arr1.length - 1
#   - Push onto the new array the product of arr1[i] and arr2[i]

# Alternate:
# - zip the two lists together
#   - Reduce with multiply?

def multiply_list1(arr1, arr2)
  result = []
  (0..arr1.length - 1).each do |idx|
    result << arr1[idx] * arr2[idx]
  end
  result
end

def multiply_list2(arr1, arr2)
  result = []
  arr1.each.with_index do |elem1, idx|
    result << elem1 * arr2[idx]
  end
  result
end

def multiply_list3(arr1, arr2)
  arr1.map.with_index { |e1, idx| e1 * arr2[idx] }
end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |pair| pair.reduce(&:*) }
end


p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]