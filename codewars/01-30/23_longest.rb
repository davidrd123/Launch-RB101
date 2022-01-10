=begin

Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is 
"aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code will 
need to be efficient.

The input will only consist of lowercase characters and will be at least one 
letter long.

If there are multiple solutions, return the one that appears first.


# PROBLEM:
- input: string
- output: string
   
# Rules/Requirements
- Find and return the longest substring in alphabetical order
- Input will be at least one character long
- Input will consist only of lowercase characters

+ Take the first substring of a given length

# Questions:



# Examples:
p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'


# DATA STRUCTURES
- input: string
- 
- String to hold longest substring so far
- String to hold current substring 

# ALGORITHM
- Initialize longest substring, current substr to first character of input

- Step through in units of two
  - If current char is >= previous char, then append curr char to current substr
    - If current substr length is > longest substr:
      - Set longest substr to current substr
  - Else reset current substring to current char
- Return longest substr
=end

require 'pry'

def longest(string)
  longest_substr = string[0]
  current_substr = string[0]

  string.chars.each_cons(2) do |prev_char, curr_char|
    if curr_char >= prev_char
      current_substr << curr_char
      if current_substr.length > longest_substr.length
        longest_substr = current_substr
      end
    else
      current_substr = curr_char
    end
  end
  longest_substr
end

# binding.pry

p longest('asd')                        == 'as'
p longest('nab')                        == 'ab'
p longest('abcdeapbcdef')               == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf')  == 'aaaabbbbctt'
p longest('asdfbyfgiklag')              =='fgikl'
p longest('z')                          == 'z'
p longest('zyba')                       == 'z'