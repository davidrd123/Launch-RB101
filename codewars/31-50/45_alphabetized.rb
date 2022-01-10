=begin

Re-order the characters of a string, so that they are concatenated into a new 
string in "case-insensitively-alphabetical-order-of-appearance" order. 

Whitespace and punctuation shall simply be removed!

The input is restricted to contain no numerals and only words containing the 
english alphabet letters.


# PROBLEM:
- input: string
- output: string
   
# Rules/Requirements
- Reorder the chars of a string (dropping whitespace & punctuation) into
  - Case insensitive
  - Alphabetical
  - Order-of-appearance
  Order
- Characters are alpha only

# Questions:
- How to preserve order of appearance?
  AbBa -> AabB
 


# Examples:
p alphabetized("") == ""
p alphabetized(" ") == ""
p alphabetized(" a") == "a"
p alphabetized("a ") == "a"
p alphabetized(" a ") == "a"
p alphabetized("A b B a") == "AabB"
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"



# DATA STRUCTURES


# ALGORITHM
- Drop all whitespace + punctuation from input string
- Init empty result string
- Iterate from 'a'..'z' -> char
  - Drop all chars not `char` from input string (case insensitive)
  - Concatenate this to end of result string
- Return result string
=end

def alphabetized(string)
  result = ''
  string.gsub!(/[^A-Za-z]/, '')
  ('a'..'z').each do |char|
    result << string.chars.filter { |c| c == char || c == char.upcase }.join
  end
  result
end


p alphabetized("")        == ""
p alphabetized(" ")       == ""
p alphabetized(" a")      == "a"
p alphabetized("a ")      == "a"
p alphabetized(" a ")     == "a"
p alphabetized("A b B a") == "AabB"
p alphabetized(" a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z") == "aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ"