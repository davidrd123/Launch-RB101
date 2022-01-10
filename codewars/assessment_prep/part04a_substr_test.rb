=begin

Given 2 strings, find out if there is a substring that appears in both strings.

Return true if you find a substring, flase if you don't
Only care about substrings that are > 1 letter in length

# PROBLEM:
- input: 2 strings
- output: boolean
   
# Rules/Requirements
- Detect whether there is a substring that appears in both strings
- Only care about substrings that are > 1 letter in length
- Ignore case
- Just alphanum chars for input
- If either string is empty, return false

# Questions:



# Examples:
substring_test('Something', "Fun")  # false
substring_test('Something', 'Home') # true
substring_test('Something', '')     # false
substring_test('BANANA', 'banana')  # true
substring_test('1234567', '541265') # true
substring_test('test', 'lllt')      # false


# DATA STRUCTURES


# ALGORITHM
- Return false if either string has length < 1
- Downcase both strings
- Generate all substrings of length >= 2 from s1
- Return true if any of these substrings are contained in s2
  - 

gen_substrings(string)
- Init empty result array
- start_index: Iterate from 0..s1.length-1
  - end_index: iterate from start_index..s1.length-1
    append string[start_idx..end_index] to result if start - end >= 1
- Return result
=end

def gen_substrings(string)
  results = []
  (0..string.length-1).each do |start_idx|
    (start_idx..string.length-1).each do |end_idx|
      results << string[start_idx..end_idx] if (end_idx-start_idx) >= 1
    end
  end
  results
end

# p gen_substrings("abcd")

def substring_test(s1, s2)
  s1.downcase!
  s2.downcase!
  s1_substrings = gen_substrings(s1)
  s1_substrings.any? { |substr| s2.include?(substr) }
end



p substring_test('Something', "Fun")  # false
p substring_test('Something', 'Home') # true
p substring_test('Something', '')     # false
p substring_test('', '')              # false
p substring_test('', 'Something')     # false
p substring_test('BANANA', 'banana')  # true
p substring_test('1234567', '541265') # true
p substring_test('test', 'lllt')      # false

