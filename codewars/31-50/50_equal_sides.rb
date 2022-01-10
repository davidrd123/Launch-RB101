=begin

6 kyu
You are going to be given an array of integers. Your job is to take that array 
and find an index N where the sum of the integers to the left of N is equal to 
the sum of the integers to the right of N. 

If there is no index that would make this happen, return -1.

For example:

Let's say you are given the array {1,2,3,4,3,2,1}: Your function will return the 
index 3, because at the 3rd position of the array, the sum of left side of the index 
({1,2,3}) and the sum of the right side of the index ({3,2,1}) both equal 6.

Let's look at another one.
You are given the array {1,100,50,-51,1,1}: Your function will return the index 1, 
because at the 1st position of the array, the sum of left side of the index ({1}) 
and the sum of the right side of the index ({50,-51,1,1}) both equal 1.

Last one:
You are given the array {20,10,-80,10,10,15,35}
At index 0 the left side is {}
The right side is {10,-80,10,10,15,35}
They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
Index 0 is the place where the left side and right side are equal.

Note: Please remember that in most programming/scripting languages the index of an array starts at 0.


# PROBLEM:
- input: An integer array of length 0 < arr < 1000. The numbers in the array can be 
         any integer positive or negative.
- output: The lowest index N where the side to the left of N is equal to the 
          side to the right of N. If you do not find an index that fits these rules, 
          then you will return -1.

   
# Rules/Requirements
- If you are given an array with multiple answers, return the lowest correct index.
- Split does not include element at index!

# Questions:



# Examples:
p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1


# DATA STRUCTURES


# ALGORITHM
- Scan through the array from left to right. index-> i
  - If balanced(arr, i) is true, return i
- Return -1

balanced(arr, i)
  checks if the part of the array to the left of i (non-inclusive)
        is equal to the part of the array to the right of i (non-inclusive)
    arr[0...i].sum == arr[i+1..].sum
=end

def balanced(arr, i)
  first_half = arr[0...i].sum
  second_half = arr[i+1..].sum
  # p first_half, second_half
  return first_half == second_half
end

def find_even_index(arr)
  (0..arr.length-1).each do |i|
    return i if balanced(arr, i)
  end
  return -1
end

# p balanced([1,2,3,4,3,2,1], 0)  # 0, 15, false
# p balanced([1,2,3,4], 2)        # 3, 4, false
# p balanced([1,2,3,4,3,2,1], 3)  # 6, 6, true

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1