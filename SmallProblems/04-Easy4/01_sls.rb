# input: two strings
# output: string

# rules: 
#     Explicit Requirements:
#       - Determines which string is longer / shorter
#       - Returns S + L + S
#       - May assume the two strings are different lengths

# Algorithm:
#   - Compare the length of the two strings
#   - Store the shorter and longers strings in appropriately named variables
#   - Return the concatenation of S + L + S

def short_long_short(str_a, str_b) 
  if str_a.length > str_b.length 
    longest_str = str_a
    shortest_str = str_b
  else
    longest_str = str_b
    shortest_str = str_a
  end
  shortest_str + longest_str + shortest_str
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"