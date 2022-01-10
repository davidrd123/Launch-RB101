=begin

What is an anagram? Well, two words are anagrams of each other if they both 
contain the same letters. For example:

'abba' & 'baab' == true

'abba' & 'bbaa' == true

'abba' & 'abbba' == false

'abba' & 'abca' == false
Write a function that will find all the anagrams of a word from a list. 
You will be given two inputs a word and an array with words. 
You should return an array of all the anagrams or an empty array if there are none.


# PROBLEM:
- input: string, array of strings
- output: array of strings
   
# Rules/Requirements
- Anagrams of a word contain the same letters (same chars and number of each)
- Return an array of the strings which match the input string

# Questions:



# Examples:
p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) == ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) == ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer']) == []



# DATA STRUCTURES
- string, array of strings
- array of strings for output

# ALGORITHM
anagram?(str1, str2)
- For each character in str1 | str2, the count of that character is the same for str1 & str2
  - Return true if this is the case, false otherwise

anagrams(str, arr)
- Filter the elements of arr by whether they are anagrams with str
  - Return the filtered array
=end
require 'pry'

def anagram?(str1, str2)
  (str1.chars.uniq | str2.chars.uniq).each do |char|
    return false if str1.count(char) != str2.count(char)
  end
  true
end

def anagrams(str, arr)
  arr.each.filter { |elem| anagram?(str, elem) }
end


# p anagram?('abba', 'aabb')  # true
# p anagram?('abba', 'aaabb') # false

p anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada'])                #== ['aabb', 'bbaa']
p anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) #== ['carer', 'racer']
p anagrams('laser', ['lazing', 'lazy',  'lacer'])                   #== []