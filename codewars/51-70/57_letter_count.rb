=begin

In this kata, you've to count lowercase letters in a given string and return 
the letter count in a hash with 'letter' as key and count as 'value'. The key 
must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

# PROBLEM:
- input: string in lowercase
- output: symbol of char => count (hash)
   
# Rules/Requirements
- Key must be symbol instead of string

# Questions:



# Examples:
p letter_count('arithmetics') ==  {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}


# DATA STRUCTURES


# ALGORITHM
- Initialize a hash with default value of 0
- Iterate over each unique character in the string
  - Add to the hash the k/v pair: (the symbol version of that characters, the count 
      of that character in the string)
- Return the count hash
=end

def letter_count(string)
  count = Hash.new { 0 }
  string.chars.uniq.each {|letter| count[letter.to_sym] = string.count(letter) }
  count
end

p letter_count('arithmetics') ==  {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}