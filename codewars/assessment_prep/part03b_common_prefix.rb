=begin

Write a method to find the longest common prefix string amongst an array of strings

If there is no common prefix, return an empty string

# PROBLEM:
- input: array of strings
- output: longest common prefix
   
# Rules/Requirements
- If no common prefix, return ""

# Questions:



# Examples:
["flower", "flow", "flight"] => "fl"
["dog", "racecar", "car"] => ""

# DATA STRUCTURES


# ALGORITHM
chars_match_at_idx?(arr, idx)
- 

- Return 0 if the strings don't share the same first letter
- Iterate from 0..length of the shortest string in the array - 1 |i|
  - if the chars don't match at i, return i-1

=end

def char_match_at_idx?(arr, idx)
  arr.map {|x| x[idx]}.all? { |el| el == arr[0][idx] }
end

def common_prefix(arr)
  shortest_str = arr.min_by(&:length)
  return "" unless char_match_at_idx?(arr, 0)
  (0..shortest_str.length-1).each do |i|
    return shortest_str[0..i-1] unless char_match_at_idx?(arr, i)
  end
  shortest_str
end

# p char_match_at_idx?(["flower", "flow", "flight"], 2)

p common_prefix(["flower", "flow", "flight"]) # "fl"
p common_prefix(["dog", "racecar", "car"]) # ""
p common_prefix(["interspecies", "interstellar", "interstate"]) # "inter"
p common_prefix(["throne", "dungeon"]) # ""
p common_prefix(["throne", "throne"]) # "throne"
