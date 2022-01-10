=begin

Write a method that takes a string argument and returns a new string that contains 
the value of the original string with all consecutive duplicate characters collapsed 
into a single character. You may not use String#squeeze or String#squeeze!.



# PROBLEM:
- input: string
- output: string
   
# Rules/Requirements
- Collapse consecutive repeated characters into one
- Empty string goes to empty string
# Questions:



# Examples:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

# DATA STRUCTURES


# ALGORITHM
- Initialize empty result string
- Convert input string to character array
- Loop until character array is empty:
  - Shift off the first character
  - Append to result string if different from last character in the result string
- Return result string

=end

def crunch(string)
  result = ''
  char_array = string.chars
  until char_array.empty?
    char = char_array.shift
    result << char if char != result[-1]
  end
  result
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba')           == '4abcabcba'
p crunch('ggggggggggggggg')         == 'g'
p crunch('a')                       == 'a'
p crunch('')                        == ''

