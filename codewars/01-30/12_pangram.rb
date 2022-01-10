=begin

A pangram is a sentence that contains every single letter of the 
alphabet at least once. For example, the sentence "The quick brown 
fox jumps over the lazy dog" is a pangram, because it uses the letters 
A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, 
False if not. Ignore numbers and punctuation.


# PROBLEM:
- input: string (sentence)
- output: boolean (whether uses a-z at least once)
   
# Rules/Requirements
- A pangram is a sentence that uses a-z at least once
- Ignore case
- Ignore numbers & punctuation

# Questions:



# Examples:
p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false



# DATA STRUCTURES
input: string
array of 'a'..'z' alphabet_arr
output: string

# ALGORITHM
- Scan through input sentence char by char
- For each char:
  - Downcase char
  - If 'a'-'z', delete char from alphabet_arr
- If alphabet_arr is empty, return true
  - Else return false
=end

def panagram?(sentence)
  alphabet_arr = ('a'..'z').to_a
  sentence.downcase.chars.each do |c|
    alphabet_arr.delete(c) if c =~ /[a-z]/
  end
  alphabet_arr.empty?
end


p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.")                       == false
