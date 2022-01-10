=begin

Sort the given strings in alphabetical order, case insensitive. 

# PROBLEM:
- input: array of strings
- output: array of strings, sorted
   
# Rules/Requirements
- Ignore case when sorting
  - Don't change strings 

# Questions:



# Examples:
["Hello", "there", "I'm", "fine"]  -->  ["fine", "Hello", "I'm", "there"]
["C", "d", "a", "B"])              -->  ["a", "B", "C", "d"]

p sortme(["Hello", "there", "I'm", "fine"]) == ["fine", "Hello", "I'm", "there"]
p sortme(["C", "d", "a", "Ba", "be"]) == ["a", "Ba", "be", "C", "d"]
p sortme(["CodeWars"]) == ["CodeWars"]


# DATA STRUCTURES


# ALGORITHM
- Sort array:
  - Compare downcased strings

=end

def sortme(arr)
  arr.sort { |a, b| a.downcase <=> b.downcase }
end

p sortme(["Hello", "there", "I'm", "fine"]) == ["fine", "Hello", "I'm", "there"]
p sortme(["C", "d", "a", "Ba", "be"]) == ["a", "Ba", "be", "C", "d"]
p sortme(["CodeWars"]) == ["CodeWars"]