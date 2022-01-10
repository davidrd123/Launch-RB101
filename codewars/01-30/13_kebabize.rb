=begin

Modify the kebabize function so that it converts a camel case string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes:

the returned string should only contain lowercase letters



# PROBLEM:
- input: string (in camelCase)
- output: string (in kebab-case)
   
# Rules/Requirements
- returned string all lowercase

# Questions:



# Examples:
p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'


# DATA STRUCTURES
input: string
intermediate:
  - Array of locations where uppercase chars are found
output: string

# ALGORITHM
- Delete non-alpha chars
- Find indices of where to insert dashes, downcase input string & insert
  dashes

find_uppercase:
- Scan through input string, find uppercase chars
  - Track indices in array, return array

insert_dashes(string, idx_array)
- Insert dashes in front of uppercase chars & downcase
  - Keep track of # of dashes inserted, add to index as offset

=end

def delete_non_alpha(string)
  string.chars.select {|c| c.downcase =~ /[a-z]/ }.join
end

def find_uppercase(string)
  uppercase_locs = []
  string.chars.each.with_index do |char, idx|
    if char =~ /[A-Z]/
      uppercase_locs << idx
    end
  end
  uppercase_locs
end

def insert_dashes(string, idx_array)
  num_dashes = 0
  idx_array.each do |idx|
    string.insert(idx+num_dashes, '-')
    num_dashes += 1
  end
  string
end

def kebabize(string)
  string = delete_non_alpha(string)
  idx_array = find_uppercase(string)
  kebab_string = insert_dashes(string, idx_array)
  kebab_string.downcase
end

p delete_non_alpha('myCamelHas3Humps')

# p find_uppercase('myCamelCasedString') # [2, 7, 12]
# p insert_dashes('myCamelCasedString', [2, 7, 12])


p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'
