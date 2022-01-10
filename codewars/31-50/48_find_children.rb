=begin

Mothers arranged a dance party for the children in school. 
At that party, there are only mothers and their children. 
All are having great fun on the dance floor when suddenly all the lights went out. 
It's a dark night and no one can see each other. 

But you were flying nearby and you can see in the dark and have ability to teleport 
people anywhere you want.

Legend:
-Uppercase letters stands for mothers, lowercase stand for their children, 
  i.e. "A" mother's children are "aaaa".
-Function input: String contains only letters, uppercase letters are unique.
Task:
Place all people in alphabetical order where Mothers are followed by their children, 
i.e. "aAbaBb" => "AaaBbb".


# PROBLEM:
- input: string
- output: string
   
# Rules/Requirements
- Reorder string so that its alphabetical with uppercase letters before their
  lowercase counterparts
- Empty string goes to empty string
# Questions:



# Examples:
p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""


# DATA STRUCTURES


# ALGORITHM
- Init empty string acc
- First sort string by case insensitive -> got letters grouped together
- Iterate over 'a'..'z' -> |letter|
  - Filter input string for letter
  - Sort and append result to acc
- Return acc
=end

def find_children(string)
  acc = ''
  string.chars.sort_by(&:downcase)
  ('a'..'z').each do |letter|
    acc << string.chars.filter { |c| c.downcase == letter }.sort.join
  end
  acc
end

p find_children("abBA")       #== "AaBb"
p find_children("AaaaaZazzz") #== "AaaaaaZzzz"
p find_children("CbcBcbaA")   #== "AaBbbCcc"
p find_children("xXfuUuuF")   #== "FfUuuuXx"
p find_children("")           #== ""