=begin

In this simple Kata your task is to create a function that turns a string 
into a Mexican Wave. You will be passed a string and you must return that 
string in an array where an uppercase letter is a person standing up.

Rules
 	1.  The input string will always be lower case but maybe empty.
  2.  If the character in the string is whitespace then pass over it as if 
      it was an empty seat.


# PROBLEM:
- input: string
- output: array of strings with each alpha letter capitalized in turn
   
# Rules/Requirements
- Input string is all lowercase alpha + spaces
- Return empty array for empty string
- Skip over but keep spaces 

# Questions:



# Examples:
p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
p wave("codewars") == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
p wave("") == []
p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
p wave(" gap ") == [" Gap ", " gAp ", " gaP "]


# DATA STRUCTURES


# ALGORITHM
- Initialize result to []
- Iterate over indexes of string:
  - If character is space, go to next iteration
  - Else
    - Capitalize just that character and add this string to result array
- Return result array

=end

def upper_char_at(s, idx)
  # if idx.zero?
  #   # p "case 1"
  #   s[0].upcase + s[1..-1]
  # elsif idx == s.length - 1
  #   # p "case 2"
  #   s[0..idx-1] + s[idx].upcase
  # else
  s[0...idx] + s[idx].upcase + s[idx+1..-1]
  # end
end

def wave(string)
  result = []
  string.chars.each.with_index do |char, idx|
    next if char == ' '

    result << upper_char_at(string, idx)
  end
  result
end

p upper_char_at('hello', 0) # "Hello"
p upper_char_at('hello', 2) # "heLlo"
p upper_char_at('hello', 4) # "hellO"

# p wave("hello")     == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
# p wave("codewars")  == ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
# p wave("")          == []
# p wave("two words") == ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
# p wave(" gap ")     == [" Gap ", " gAp ", " gaP "]