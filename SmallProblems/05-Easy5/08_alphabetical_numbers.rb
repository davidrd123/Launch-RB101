# input: array of integers
# output: array of integers

# rules:
#   Explicit Requirements:
#     - The integers in the array should be sorted based on the English
#       words in the array

# Algorithm:
# - Define an array with all of the english words 'zero'..'nineteen'
#   - Sort that array alphabetically
# - Sort the input array of integers with a custom sort function
#   - Use the spaceship operator and for two numbers `x` and `y`
#     index into the WORD array and compare the two english words
#     that correspond to x and y 

# Problem: need to have the array of integers sorted along with the english
#   words.
#   - Try zipping up the english words with (1..19) and *then* sort
#     the array based on the english words
#     - use sort_by
#     

require 'pry'

WORDS_FOR_NUMBERS = %w[zero one two three four five six seven eight nine 
                       ten eleven twelve thirteen fourteen fifteen sixteen 
                       seventeen eighteen nineteen]
NUMBERS = (0..19).to_a

INT_TO_ENGL = NUMBERS.zip(WORDS_FOR_NUMBERS).sort_by {|tuple| tuple[1]}.to_h
ENGL_TO_INT = INT_TO_ENGL.invert


def alphabetic_number_sort2(arr)
  arr.map { |x| INT_TO_ENGL[x] }.sort
     .map { |x| ENGL_TO_INT[x] }
end

def alphabetic_number_sort(arr)
  arr.sort { |x, y| WORDS_FOR_NUMBERS[x] <=> WORDS_FOR_NUMBERS[y] }
end


p alphabetic_number_sort((0..19).to_a)

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

binding.pry