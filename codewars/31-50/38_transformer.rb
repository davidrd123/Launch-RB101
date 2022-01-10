=begin

Given a string, return a new string that has transformed based on the input:

Change case of every character, ie. lower case to upper case, upper case to lower case.
Reverse the order of words from the input.
Note: You will have to handle multiple spaces, and leading/trailing spaces.


# PROBLEM:
- input: string
- output: string
   
# Rules/Requirements
- Change the case of every letter
- Reverse the order of the words
- Handle multiple spaces & leading / trailing spaces

# Questions:
- How to handle leading / trailing spaces? trim


# Examples:
"Example Input" ==> "iNPUT eXAMPLE"
" hey There  you " ==> "YOU tHERE HEY"
You may assume the input only contain English alphabet and spaces.


# DATA STRUCTURES


# ALGORITHM
- Split sentence into array of words
- For each word: 
  - Reverse capitalization of every char
=end

def transform(string)
  word_arr = string.split
  word_arr.reverse!
  word_arr.map { |word| word.swapcase }
end

p transform("Example Input")
p transform(" hey There  you ")