# input: string
# output: string

# rules:
#   Explicit Requirements:
#     - Return string where the first and last letter of every word are swapped
#     - Every word contains at least one letter
#     - The input string will contain at least one word
#     - Each string contains nothing but words and spaces
#   Implicit Requirements:
#     - Words are delimited by spaced
#     - No punctuation is allowed: all alphanumeric characters + spaces
#     - Words of one character are mapped to themselves
#     - case is preserved

# Algorithm:
#   - Split string into array of words
#   - For each word
#     - Swap the first and last letters
#   - Join the word array back into one string and return it.
#

require 'pry'

def transform_word(word)
  word[-1] + word[1..-2] + word[0]
end

def swap(string)
  string.split.map { |word| transform_word(word) }.join(' ')
end

binding.pry

# p transform_word('hi')    # == 'ih'
# p transform_word('o')     # == 'o'
# p transform_word('Jello') # == 'oellJ'

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde')                         #== 'ebcdA'
p swap('a')                             #== 'a'