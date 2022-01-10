=begin

Write a method that takes a string as an argument and groups the number of 
times each character appears in the string as a hash sorted by the highest
number of occurrences.

The characters should be sorted alphabetically e.g:

get_char_count("cba") => {1=>["a", "b", "c"]}

You should ignore spaces, special characters and count uppercase letters as
lowercase ones.


# PROBLEM:
- input: string
- output: hash
   
# Rules/Requirements
- Ignore non-alphanum chars, treat alpha as all lowercase
- Sort the characters alphabetically in the groups
- Sort the hash descending by count

# Questions:



# Examples:
p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}


# DATA STRUCTURES


# ALGORITHM
- Drop all non-alphanum chars
- Downcase everything
- Make a hash with counts of each character
  - "a" => 2, "b" => 1, "c" => 1
- Invert each hash, group by number 
- Alphabetize each group
- Sort the hash descending by count
=end
require 'pry'


def get_char_hash(string)
  hash = Hash.new(0)
  string.chars.each do |char|
    hash[char] += 1
  end
  hash
end

def invert_and_group(hash)
  inverted = Hash.new {|h, k| h[k] = []}
  hash.to_a.each do |char, count|
    inverted[count] << char
  end
  inverted
end

def sort_keys(hash)
  hash.sort { |(c1, _), (c2, _)| c2 <=> c1 }.to_h
end

def alphabetize_groups(hash)
  hash.each do |count, char_group|
    char_group.sort!
  end
  hash
end

def get_char_count(string)
  string.downcase!
  string.gsub!(/[^a-z0-9]/, '')
  
  inverted = invert_and_group(get_char_hash(string))
  sorted = sort_keys(inverted)
  alphabetized = alphabetize_groups(inverted)
end


p get_char_count("zzzzMississippi")           #== {4=>["i", "s"], 2=>["p"], 1=>["m"]}
# p get_char_count("Hello. Hello? HELLO!!") #== {6=>["l"], 3=>["e", "h", "o"]}
# p get_char_count("aaa...bb...c!")         #== {3=>["a"], 2=>["b"], 1=>["c"]}
# p get_char_count("aaabbbccc")             #== {3=>["a", "b", "c"]}
# p get_char_count("abc123")                #== {1=>["1", "2", "3", "a", "b", "c"]}