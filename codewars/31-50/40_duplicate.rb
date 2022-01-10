=begin

The goal of this exercise is to convert a string to a new string where each 
character in the new string is "(" if that character appears only once in the 
original string, or ")" if that character appears more than once in the original 
string. 

Ignore capitalization when determining if a character is a duplicate.


# PROBLEM:
- input: string
- output: string
   
# Rules/Requirements
- Replace a char with '(' if it occurs only once
- Replace a char with ')' if it appears more than once
- Ignore capitialization
+ Count all characters including whitespace

# Questions:



# Examples:
"din"      =>  "((("
"recede"   =>  "()()()"
"Success"  =>  ")())())"
"(( @"     =>  "))((" 
p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("


# DATA STRUCTURES


# ALGORITHM
- Init result to ''
- Downcase the input string
- Iterate over every character:
  - If the char has count == 1, append '(' to result
  - Otherwise, append ')' to result
- Return result

=end

def duplicate_encode(string)
  result = '' 
  string.downcase.chars.each do |char|
    if string.count(char) == 1
      result << '('
    else
      result << ')' 
    end
  end
  result
end


p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("