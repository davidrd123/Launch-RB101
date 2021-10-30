# input: string
# output: list of all substrings that start at the beginning of the input string

# rules:
#   Explicit Requirements
#   - The return value should be arranged in order from shortest to longest substr
#   Implicit Requirements
#   - 

# Algorithm
# - Initialize empty result array
# - Iterate over index from 0..str.len-1


def leading_substrings(string)
  string.chars.map.with_index { |_, idx| string[0..idx] }
end



p leading_substrings('abc')   == ['a', 'ab', 'abc']
p leading_substrings('a')     == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']