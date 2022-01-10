=begin

Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

# PROBLEM:
- input: string
- output: string
   
# Rules/Requirements
- Replace number words with digits in the input string
+ numbers still be lowercase?

# Questions:



# Examples:
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# DATA STRUCTURES


# ALGORITHM
- Iterate over a hash mapping alpha rep of number to digit rep (e.g., {'one' => 1, 'two' => 2}
  - Gsub into input string with /key/, value

=end

NUMBERS = {
  'one' => 1,
   'two' => 2,
   'three' => 3,
   'four' => 4,
   'five' => 5,
   'six' => 6,
   'seven' => 7,
   'eight' => 8,
   'nine' => 9
 }
 
 def word_to_digit(string)
   NUMBERS.each do |alpha, digit|
     string = string.gsub(/#{Regexp.quote(alpha)}/, digit.to_s)
   end
   string
 end
 
 p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.')
 