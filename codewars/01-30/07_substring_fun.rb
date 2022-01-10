=begin

Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word 
which should be returned as a string, where n is the position of the word 
in the list.

For example:

["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2



# PROBLEM:
- input: array of strings
- output: string
   
# Rules/Requirements
- Take the nth letter of each string in the input array
  - `n` refers to the index each string has in the input array
+ Empty array returns empty string
+ Case is unchanged   

# Questions:



# Examples:
p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'


# DATA STRUCTURES
- input: array of strings

- output: string


# ALGORITHM
input: arr
- Initialize result to empty string ''
- If input array is empty
  - Return result
- Iterate over each element in the input array with index `idx`
  - Concatenate arr[idx] to result
- Return result


=end

def nth_char(arr)
  result = ''
  return result if arr.empty?
  
  arr.each.with_index do |word, idx|
    result << word[idx]
  end
  result
end





p nth_char(['yoda', 'best', 'has'])   == 'yes'
p nth_char([])                        == ''
p nth_char(['X-ray'])                 == 'X'
p nth_char(['No', 'No'])              == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'
