# input: string
# output: list of all substrings that are palindromic

# rules:
#   Explicit Requirements
#   - Palindrome: same seq of characters forwards vs. backwards
#   - Return value arranged in the same sequence as the substrings
#     appear in the string
#   - Duplicate palindromes should be included multiple times
#   - Pay attention to case
#
#   Implicit Requirements
#   - Single characters are not palindromes   
#   

# Algorithm:
# - Generate list of all substrings 
# - Filter each element of that list by whether it is a palindrome 
#   - Palindromes are equal to their reversed string and have length > 1
require 'pry'

def leading_substrings(string)
  string.chars.map.with_index { |_, idx| string[0..idx] }
end

def substrings(string)
  string.chars.flat_map.with_index do |_, idx|
    leading_substrings(string[idx..-1])
  end
end

def palindrome?(string)
  string == string.reverse && string.length > 1
end

def palindromes(string)
  substrings(string).select { |substr| palindrome?(substr) }
end



p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
