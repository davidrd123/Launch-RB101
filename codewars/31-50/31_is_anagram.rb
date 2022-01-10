=begin

An anagram is the result of rearranging the letters of a word to produce 
a new word (see wikipedia).

Note: anagrams are case insensitive

Complete the function to return true if the two arguments given are anagrams 
of each other; return false otherwise.


# PROBLEM:
- input: two strings
- output: boolean
   
# Rules/Requirements
- Ignore case
- Anagrams have the same letter counts

# Questions:



# Examples:
p is_anagram('Creative', 'Reactive') == true
p is_anagram("foefet", "toffee") == true
p is_anagram("Buckethead", "DeathCubeK") == true
p is_anagram("Twoo", "WooT") == true
p is_anagram("dumble", "bumble") == false
p is_anagram("ound", "round") == false
p is_anagram("apple", "pale") == false


# DATA STRUCTURES


# ALGORITHM
- Downcase each string
- For each letter in ('a'..'z'):
  - If the char count differs for the two strings, return false
- Return true

=end

def is_anagram1(str1, str2)
  str1.downcase!
  str2.downcase!
  ('a'..'z').each do |l|
    return false if str1.downcase.count(l) != str2.downcase.count(l)
  end
  true
end

def is_anagram(str1, str2)
  str1.downcase.chars.sort == str2.downcase.chars.sort
end

p is_anagram('Creative', 'Reactive') == true
p is_anagram("foefet", "toffee") == true
p is_anagram("Buckethead", "DeathCubeK") == true
p is_anagram("Twoo", "WooT") == true
p is_anagram("dumble", "bumble") == false
p is_anagram("ound", "round") == false
p is_anagram("apple", "pale") == false