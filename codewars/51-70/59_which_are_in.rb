=begin

Given two arrays of strings a1 and a2 return a sorted array r in lexicographical 
order of the strings of a1 which are substrings of strings of a2.

In Shell bash a1 and a2 are strings. The return is a string where words are 
separated by commas.

Beware: r must be without duplicates.
Don't mutate the inputs.


# PROBLEM:
- input: two arrays of strings (a1, a2)
- output: sorted array of strings (the strings of a1 which are substrings
    of strings of a2)
   
# Rules/Requirements
- r has no duplicates
- don't mutate inputs

# Questions:
- Does a1 contain duplicates?
  - If so, can always call uniq on result array


# Examples:
#Example 1: 
a1 = ["arp", "live", "strong"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
returns ["arp", "live", "strong"]

#Example 2: 
a1 = ["tarp", "mice", "bull"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
returns []

# DATA STRUCTURES


# ALGORITHM
- Initialize empty result array
- For each string in a1
  - Find if it is a substring of any substring in a2
    - If so, add it to the result array and move on to the next string in a1

- Sort the result array and return it

=end

def which_are_in(a1, a2)
  result = []
  a1.each do |a1_string|
    result << a1_string if a2.any? { |a2_string| a2_string.include?(a1_string) }
  end

  result.sort
end

a1 = ["arp", "live", "strong"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
p which_are_in(a1, a2) # ["arp", "live", "strong"]

a1 = ["tarp", "mice", "bull"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
p which_are_in(a1, a2) # []