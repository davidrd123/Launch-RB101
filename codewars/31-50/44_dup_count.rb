=begin

Write a function that will return the count of distinct case-insensitive 
alphabetic characters and numeric digits that occur more than once in the 
input string. 

The input string can be assumed to contain only alphabets (both uppercase and 
lowercase) and numeric digits.


# PROBLEM:
- input: string
- output: integer
   
# Rules/Requirements
- Input string only alphanum
- Return 0 for empty string
- Case insensitive
- Return count of chars that occur more than once

# Questions:



# Examples:
"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice
p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2


# DATA STRUCTURES


# ALGORITHM
- Init counter to 0
- Downcase string
- For each char that occurs in the string
  - If its count in the string is > 1, increment counter
- Return counter

=end

def duplicate_count1(string)
  counter = 0
  string.downcase.chars.uniq.each do |char|
    counter += 1 if string.downcase.count(char) > 1
  end
  counter
end

def duplicate_count(string)
  s = string.downcase.chars
  s.uniq.count { |c| s.count(c) > 1 }
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2