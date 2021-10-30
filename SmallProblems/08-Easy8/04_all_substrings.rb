# input: string
# output: array of all substrings, ordered by start position

# rules: 
#   Explicit Requirments
#   - Use leading_substrings

# Algorithm
# - Initialize empty result array
# - Map across the chars of input string with index:
#   - return leading substring starting at index
# - Flattend resulting array-of-arrays and return


def leading_substrings(string)
  string.chars.map.with_index { |_, idx| string[0..idx] }
end

def substrings(string)
  string.chars.flat_map.with_index do |_, idx|
    leading_substrings(string[idx..-1])
  end
end



p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

p substrings('abcde')
p substrings('a')
p substrings('ab')