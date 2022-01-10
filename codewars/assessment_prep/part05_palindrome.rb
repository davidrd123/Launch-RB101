=begin

# Find the length of the longest substring in the given string that is the same in reverse.

# PROBLEM:
- input: string
- output: integer
   
# Rules/Requirements
- Find the longest substring that is a palindrome
- Ignore spaces
- Don't ignore case?
- Empty string -> 0

# Questions:
- Should case matter or not?
  - Assuming yes
- Ignoring spaces okay?


# Examples:
"I like racecars that go fast" -> (racecar) 7
"a" -> 1
"aab" -> 2
"abcde" -> 1
"zzbaabcd" -> 4
"" -> 0

# DATA STRUCTURES


# ALGORITHM
- palindrome?(string)
  - string.reverse == string

longest_palindrome(string)
- Return 0 if string is empty
- Delete spaces
- Init empty palindromes array to hold substrings
- For i from 0..string.length-1 |i|
  - Generate all substrings that start with the ith indexed character of string:
  - for j from i to string.length-1:
    add string[i..j] to substring if palindrome?(string[i..j])
- return palindromes.map(&:length).max
=end

def palindrome?(string)
  string == string.reverse
end

def longest_palindrome(string)
  return 0 if string.empty?
  palindromes = []
  string = string.gsub(/[ ]/, '')
  (0..string.length-1).each do |i|
    (i..string.length-1).each do |j|
      substring = string[i..j]
      palindromes << substring if palindrome?(substring)
    end
  end
  p palindromes
  palindromes.map(&:length).max
end

p longest_palindrome("I like racecars that go fast") # 7
p longest_palindrome("a") # 1
p longest_palindrome("aa") # 2
p longest_palindrome("aab") # 2 
p longest_palindrome("baabcd") # 2
p longest_palindrome("") # 0
p longest_palindrome("baablkj12345432133d") # 9