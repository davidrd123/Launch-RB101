=begin

Write a method that takes an array of consecutive (increasing) letters as input 
and that returns the missing letter in the array.

You will always get an valid array. And it will be always exactly one letter be 
missing. The length of the array will always be at least 2.

The array will always contain letters in only one case.


# PROBLEM:
- input: array of letters
- output: missing letter
   
# Rules/Requirements
- Letters will be in all uppercase or lowercase
- The input array will contain consecutive letters with one missing
- The array length is >= 2
- Find and return the missing letter

# Questions:



# Examples:
['a','b','c','d','f'] -> 'e' ['O','Q','R','S'] -> 'P'

["a","b","c","d","f"] -> "e"
["O","Q","R","S"] -> "P"


# DATA STRUCTURES


# ALGORITHM
- Determine case of letters -> is_uppercase boolean
- Downcase the array
- Generate the array of lowercase letters starting at the first letter of the array
- Loop:
  - Shift off the first element of the input array & the consec_letter array
  - If not equal, 
    - If is_uppercae, uppercase & return the letter from consec_letter array
    - Else return the letter from consec_letter array


gen_alphabet_starting_at(letter)
- Return the array of letters up to 'z' starting at letter
=end


def gen_alphabet_starting_at(letter)
  alphabet = ('a'..'z').to_a
  alphabet[alphabet.index(letter)..]
end

def find_letter(array)
  is_uppercase = array.first.upcase == array.first
  array = array.map { |letter| letter.downcase }
  consec_letter_arr = gen_alphabet_starting_at(array.first)
  loop do
    input_letter = array.shift
    consec_letter = consec_letter_arr.shift
    if input_letter != consec_letter
      return is_uppercase ? consec_letter.upcase : consec_letter
    end
  end
end



# p gen_alphabet_starting_at('w')

p find_letter(["a","b","c","d","f"]) #-> "e"
p find_letter(["O","Q","R","S"]) #-> "P"