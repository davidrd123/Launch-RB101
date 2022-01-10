=begin

Given two words, how many letters do you have to remove from them to make them 
  anagrams?
Example
First word : c od e w ar s (4 letters removed)
Second word : ha c k er r a nk (6 letters removed)
Result : 10
Hints
A word is an anagram of another word if they have the same letters (usually 
in a different order).
Do not worry about case. All inputs will be lowercase.



# PROBLEM:
- input: two strings
- output: integer
   
# Rules/Requirements
- To make the two strings anagrams by dropping letters, return the count
  of characters removed

# Questions:
- What about characters that occur more than once?


# Examples:
p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10


# DATA STRUCTURES


# ALGORITHM
- Init count to 0
- Convert str1 and str2 to char arrays
- Sort str1 and str2 
- While str1 is not empty:
  - shift off the first char to 'char'
  - if the first char of str2 matches
      shift off the first char of str2
  - else
      increment count by 1
- Add length of str2 to count
- Return count
=end

def anagram_difference1(str1, str2)
  count = 0
  str1_arr = str1.chars.sort
  str2_arr = str2.chars.sort
  until str1_arr.empty? || str2_arr.empty?
    # p str1_arr, str2_arr
    if str1_arr.first == str2_arr.first
      str1_arr.shift
      str2_arr.shift
    elsif str1_arr.first > str2_arr.first
      str2_arr.shift
      count += 1
    else
      str1_arr.shift
      count += 1
    end
  end
  count += str1_arr.length + str2_arr.length
  count
end

def anagram_difference(str1, str2)
  alpha = ('a'..'z').to_a
  count = 0

  alpha.each {|l| count += (str1.count(l) - str2.count(l)).abs}
  count
end

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') #== 10