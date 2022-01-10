=begin

Write a method that takes an Array of Integers between 0 and 19, and returns an 
Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, 
twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# PROBLEM:
- input: array of integers
- output: array of those integers sorted by english words for each number
   
# Rules/Requirements


# Questions:



# Examples:
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# DATA STRUCTURES


# ALGORITHM
- Establish hash mapping integers to words
- Call sort on the array of integers, hash[int] in block body

=end
require 'pry'

WORDS_FOR_NUMBERS = %w(zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, 
twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by {|number| WORDS_FOR_NUMBERS[number] }
end

p alphabetic_number_sort([0, 4, 8, 11]) #== [8, 11, 4, 0]

# binding.pry