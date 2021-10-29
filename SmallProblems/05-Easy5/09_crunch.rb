# input: string
# output: new string

# rules: 
#   Explicit Requirements
#     - Return new string obtained by removing all consecutive
#        duplicate characters collapsed into a single character
#   Implicit Requirements
#     - No leading whitespace in string

# Algorithm:
#  (Regex)
#   - capture group for same character repeated
#   - substitute that character back in for the many repeates

def crunch_re(string)
  string.gsub(/(\S)\1+/, '\1')
end

# Algorithm
# - Make a new empty result string
# - Iterate over each character in the original string:
#   - Keep track of previous character
#   - If curr character is the same as previous and non-whitespace,
#     do nothing (move to next character)
#   - Otherwise
#     - Push curr char to result
#     - Update prev_char to curr_char

def crunch(string)
  result = ''
  prev_char = ''
  string.chars.each do |char|
    next if char == prev_char && char != ' '

    result << char
    prev_char = char
  end
  result
end



p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba')           #== '4abcabcba'
p crunch('ggggggggggggggg')         #== 'g'
p crunch('a')                       #== 'a'
p crunch('')                        #== ''