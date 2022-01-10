=begin

In this kata, you've to count lowercase letters in a given string and return 
the letter count in a hash with 'letter' as key and count as 'value'. 
The key must be 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.


# PROBLEM:
- input: string
- output: hash with symbol of character as key, count as value
   
# Rules/Requirements
- count lowercase letters in string

# Questions:
- Can have other non-alpha characters?


# Examples:
p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1})
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2})


# DATA STRUCTURES
hash to store count for each character

# ALGORITHM

Initialize result hash with default value of 0
Iterate over unique characters of input string
  - Add symbol version of character as key
  - Set value to count of that character in the string
Return result hash
=end

def letter_count(str)
  hash = Hash.new(0)
  str.chars.uniq.each do |c|
    hash[c.to_sym] = str.count(c)
  end
  hash
end


p letter_count('codewars')    == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity')    == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
