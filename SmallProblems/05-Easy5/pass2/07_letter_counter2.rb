=begin

Write a method that takes a string with one or more space separated words and 
returns a hash that shows the number of words of different sizes.

Exclude non-alpha from words

# PROBLEM:
- input: string
- output: hash of word size to count of that size
   
# Rules/Requirements
- words are separated by spaces and include any non-space characters
- Empty string goes to empty hash


# Questions:



# Examples:
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

# DATA STRUCTURES


# ALGORITHM
- Gsub out non-alpha to ''
- Split input string to array, map length over array, call tally

=end

def word_sizes(sentence)
  sentence.gsub(/[^a-z ]/i, '').split.map(&:length).tally
end

p word_sizes('Four score and seven.')                       == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!')  == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?")                              == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('')                                            == {}