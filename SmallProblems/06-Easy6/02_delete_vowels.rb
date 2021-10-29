# input: array of strings
# output: array of same string values with vowels removed

# rules:
#   Explicit Requirements
#     - Remove vowels from each word
#   Implicit Requirements
#     - Insensitive to case but preserving case
#     - Okay to mutate contents of array passed in

# Algorithm
#   - Initialize result array
#   - Iterate over each word
#     - Delete vowels in each word
#     - Append the devoweled word to the result array
#   - Return the result array
require 'pry'

def remove_vowels1(str_arr)
  result = []
  str_arr.each do |word|
    result << word.gsub(/[aeiou]/i, '')
  end
  result
end

def remove_vowels(str_arr)
  str_arr.map { |word| word.gsub(/[aeiou]/i, '') }
end

# binding.pry

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white))   #== %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ))              #== ['BC', '', 'XYZ']