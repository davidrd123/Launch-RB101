=begin
A palindrome is a word, phrase, number, or other sequence of characters which reads the same backward as forward. Examples of numerical palindromes are:

2332 
110011 
54322345

You'll be given 2 numbers as arguments: (num, s). Write a method which returns an array of s number of numerical palindromes that come after num. If num is a palindrome itself, it should be included in the count. 

Return "Not valid" instead if any one of the inputs is not an integer or is less than 0.


# PROBLEM
- Input: 2 integers - 1st integer will represent starting value, 2nd integer will represent the number of palindromes we find
- Output: array of palindromes found
- Objective: Given 2 numbers, find s number (second argument) of palindromes that come after first argument

Rules/Requirements:
- inputs need to be integers greater than or equal to 0
  - return "Not valid" if we don't get valid inputs
- if num (first argument) is a palindrome, include it in the return array
- output/return value will be an array whose size is equal to s (second argument)
- definition of palindrome: reads same forwards and backwards
- if second argument is 0, return an empty array
- single digit numbers are not considered palindromes
  
Questions:
- would a single digit number be considered a numerical palindrome?
- does s (second argument) have a min or max? What if s is 0? 


# EXAMPLES
p palindrome(6,4) == [11,22,33,44]
p palindrome(75,1) == [77]
p palindrome(101,2) == [101,111]
p palindrome(20,0) == []
p palindrome(0,4) == [11,22,33,44]
p palindrome("ACCDDCCA",3) == "Not valid"
p palindrome(773,"1551") == "Not valid"
p palindrome(-4505,15) == "Not valid"
p palindrome(4505,-15) == "Not valid"

# DATA STRUCTURES
- Input: 2 integers - 0 or greater than 0
- Output: array of integers
  - if arguments weren't valid, return string "Not valid"
  
- counter - integer
- string

https://app.coderpad.io/sandbox

# ALGORITHM

Andy:
#
# - initialize counter to 0
#   declare array
#   begin loop - test if counter equals s, if so exit and output array
#   convert current int to string
#   test for equality against itself reversed
#   if true add to array and increment counter
#   increment num

David:
  # input: int, int
  # output: array
  palindrome
  - Check if inputs are valid
    - If not, return "Not valid"
  - Initialize `curr_num` to `num`
  - Initialize `result` to empty array
  - Loop:
    - Break if length of result == s
    - If `curr_num` is a palindrome
      - Add to `result`
  - Return result

  # input: String
  # output: Boolean
  is_valid (num)
    - Check if num represents an integer
      - If not return false
    - Check if num is >= 0
      - If not return false

  # input: Integer
  # output: Boolean
  is_palindrome(num)
    - Check if string rep of `num` is equal to reverse


Matt E.:
-return “Not Valid” if either input is not >= 0
-return [] if s is 0
-accept 2 integers as arguments
-assign integer as num, current_num
-initialize empty array, arr
-loop until array size == s to find palindromes
  -add current_num to arr if it is a palindrome
    -verify current_num as a string is equal to the reverse of it
  -add 1 to current_num
-return arr


Addison:
- GET num
  - check user input >= 0
- GET s
  - check user input >= 0
- SET empty array
- WHILE s > array length
  - IF palindrome, add num to array
  - Increment num
- RETURN array

Matt W.:

- Take two integers (num, s) as input

- Count up from num until a palindrome is achieved
  -Initialize an output array
  -Starting at num... 
  -Convert current integer to string 
  -Test string for palindrome-ness (true/false)
  -If string is palindrome
    -Convert string back to integer
    -Append integer to output array
- Stop adding palindromes to output array once array.size is equal to 's'
- Return output array


- check if arguments are valid
- check from first argument up to an undetermined number whether current number is a palindrome
- if it is, find some way to store it
- stop checking once number of palindromes we've found is equivalent to second argument


`palindrome` method:
- accept two arguments (the first representing the number, and second representing the length)
- check if both arguments are valid (using `valid?` helper method)
  - if not, return "Not valid"
- create an empty array to store resulting palindromes
- perform the follow actions until the size of the results array is equal to the second argument:
  - check if current number (start with first argument) is a palindrome (using `palindrome?` helper method)
    - if it is, add number to the results array
    - if not, move onto next iteration
  - increment current number by 1 on each iteration
- return results array

`palindrome?` helper method - determine if argument is palindrome:
- accept integer as argument
- convert integer to string
- check if:
  - reverse of the string is equivalent to value of the string
  - the length of the string is greater than 1
- if both conditions are true, then return `true`
- if not, return `false`

`valid?` helper method - determine if arguments are valid:
- accept two arguments (the same arguments passed to `palindrome`)
- check if:
  - first argument is an integer
  - second argument is an integer
  - first argument and second argument are both greater than or equal to 0
- if all conditions are true, then return `true`
- if not, return `false`


=end

def palindrome(num, s)
  unless valid?(num, s)
    return "Not valid"
  end
  result = []
  loop do
    break if result.size >= s
    if palindrome?(num)
      result << num
    end
    num += 1
  end
  result
end

def palindrome?(num)
  num.to_s == num.to_s.reverse && num.to_s.length > 1
end

# p palindrome?(1)
# p palindrome?(10)
# p palindrome?(101)

def valid?(num, s)
  (num.is_a?(Integer) && s.is_a?(Integer)) && (num >= 0 && s >= 0)
end


# p valid?("ACCDDCCA",3) #== "Not valid"
# p valid?(773,"1551") #== "Not valid"
#  p valid?(-4505,15) #== "Not valid"
# p valid?(4505,-15) #== "Not valid"
# p valid?(4505,15) #== "Not valid"


p palindrome(6,4) == [11,22,33,44]
p palindrome(75,1) == [77]
p palindrome(101,2) == [101,111]
p palindrome(101,0) == []
p palindrome(20,0) == []
p palindrome(0,4) == [11,22,33,44]
p palindrome("ACCDDCCA",3) == "Not valid"
p palindrome(773,"1551") == "Not valid"
p palindrome(-4505,15) == "Not valid"
p palindrome(4505,-15) == "Not valid"