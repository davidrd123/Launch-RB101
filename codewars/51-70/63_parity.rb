=begin

You are given an array (which will have a length of at least 3, but could be 
very large) containing integers. The array is either entirely comprised of odd 
integers or entirely comprised of even integers except for a single integer N. 

Write a method that takes the array as an argument and returns this "outlier" N.


# PROBLEM:
- input: array of integers
- output: integer (the outlier)
   
# Rules/Requirements
- The input array is either all odd or all even except for one number which is (even/odd)
- The input array is of length >= 3

# Questions:



# Examples:
Examples
[2, 4, 0, 100, 4, 11, 2602, 36]
Should return: 11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21]
Should return: 160 (the only even number)


# DATA STRUCTURES


# ALGORITHM
- First figure out if the array is almost all even / odd
  - Store this in almost_all_even (boolean)
- Then if almost_all_even, find and return the odd number
- Else find and return the even number.

is_almost_all_even?(array)
- Map even? across array, then if the count of true is equal to the length
  minus one, return true
- Otherwise return false
=end


def almost_all_even?(array)
  array.map(&:even?).count(true) == array.length - 1
end

def find_outlier(array)
  almost_all_even = almost_all_even?(array)
  if almost_all_even
    array.find(&:odd?)
  else
    array.find(&:even?)
  end
end


p find_outlier([2, 4, 0, 100, 4, 11, 2602, 36]) # 11
p find_outlier([160, 3, 1719, 19, 11, 13, -21]) # 160