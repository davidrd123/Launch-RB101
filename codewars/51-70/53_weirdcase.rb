=begin

Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and 
returns the same string with all even indexed characters in each word upper cased, 
and all odd indexed characters in each word lower cased. The indexing just explained 
is zero based, so the zero-ith index is even, therefore that character should be upper cased.

The passed in string will only consist of alphabetical characters and spaces(' '). 
Spaces will only be present if there are multiple words. Words will be separated 
by a single space(' ').


# PROBLEM:
- input: string
- output: string
   
# Rules/Requirements
- Tranform within each word: (0-based index)
  - All even index chars uppercased
  - All odd index chars lower cased
- Input string only alpha + spaces
- Words separated by single space

# Questions:



# Examples:
p weirdcase( "String" ) == "StRiNg"
p weirdcase( "Weird string case" ) == "WeIrD StRiNg CaSe"


# DATA STRUCTURES
sentence -> word array



# ALGORITHM
- Split string to array of words
- Map weirdcase_words over word array
- Join with ' ' and return

weirdcase_word(word)
- Map over word chars with index
  if index is even, 
    char.upcase
  else
    char.downcase
  join and return
=end

def weirdcase_word(str)
  str.chars.map.with_index {|c, idx| idx.even? ? c.upcase : c.downcase }.join
end

def weirdcase(str)
  str.split.map { |word| weirdcase_word(word) }.join(' ')
end

p weirdcase( "String" )             == "StRiNg"
p weirdcase( "Weird string case" )  == "WeIrD StRiNg CaSe"

# p weirdcase_word("String")