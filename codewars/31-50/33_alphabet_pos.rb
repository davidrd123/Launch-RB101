=begin

In this kata you are required to, given a string, replace every letter with 
its position in the alphabet.

If anything in the text isn't a letter, ignore it and don't return it.

"a" = 1, "b" = 2, etc.


# PROBLEM:
- input: string
- output: string with each letter replaced by it's position in the alphabet
      (with spaces between the integers)
   
# Rules/Requirements
- a=1.. z=26
- Ignore case
- Ignore non-alpha

# Questions:



# Examples:
alphabet_position("The sunset sets at twelve o' clock.")
Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (as a string)



# DATA STRUCTURES


# ALGORITHM
to_alpha:
- Downcase sentence and drop non-alpha (including spaces)
char_to_num:
- Map each letter to its numeric position

alphabet_position:
  - Convert sentence to compacted string (drop non-alpha)
  - Convert this to character array
  - Use map to convert each character to corr. number -> array
  - Join the array with spaces and return

=end

def to_alpha(string)
  string.downcase.gsub(/[^a-z]/, '')
end

def char_to_num(char)
  ('a'..'z').zip(1..26).to_h[char]
end

def alphabet_position(sentence)
  compacted_str_arr = to_alpha(sentence).chars
  compacted_str_arr.map {|char| char_to_num(char)}.join(' ')
end

p alphabet_position("The sunset sets at twelve o' clock.")

# p char_to_num('a')

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
