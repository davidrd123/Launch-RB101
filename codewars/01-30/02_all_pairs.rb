=begin

You are given array of integers, your task will be to count all pairs in that 
array and return their count.



# PROBLEM:
- input: array of integers
- output: integer (count of number of pairs)
   
# Rules/Requirements
- Return 0 if array is empty or just one value
- If there are more pairs of a certain #, count each once [0, 0, 0, 0] => 2

# Questions:



# Examples:
p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0



# DATA STRUCTURES


# ALGORITHM
- Initialize count = 0
- Sort array
- Loop until array is empty:
  - Compare arr[0] and arr[1]:
    - If equal, slice arr = arr[2..] and increment count
    - If not equal, shift off first element
- Return count

=end

def pairs(arr)
  count = 0
  arr.sort!
  until arr.empty?
    if arr[0] == arr[1]
      count += 1
      arr = arr[2..]
    else
      arr.shift
    end
  end
  count
end



p pairs([1, 2, 5, 6, 5, 2])             == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2])  == 4
p pairs([0, 0, 0, 0, 0, 0, 0])          == 3 
p pairs([1000, 1000])                   == 1
p pairs([])                             == 0
p pairs([54])                           == 0
