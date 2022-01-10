=begin

A string is considered to be in title case if each word in the string is either 
(a) capitalised (that is, only the first letter of the word is in upper case) 
or (b) considered to be an exception and put entirely into lower case unless 
it is the first word, which is always capitalised.

Write a function that will convert a string into title case, given an optional 
list of exceptions (minor words). The list of minor words will be given as a 
string with each word separated by a space. Your function should ignore the case 
of the minor words string -- it should behave in the same way even if the case 
of the minor word string is changed.

# PROBLEM:
- input: string to title case, (optional) string listing exceptions
- output: input string in title case
   
# Rules/Requirements
- Titlecasing a word:
  - First letter is capitalized
- Exception words are listed in an optional argument, in one string separated
  by spaces
  - Case is ignored when matching exceptional words to words in input string
    EXCEPT when the word is the first word!!!
  - Exceptional words are all in lowercase
- Input is all all alpha chars

# Questions:



# Examples:
p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'



# DATA STRUCTURES
- Input string, (optional) exceptional word string

- Array of the exceptional words

# ALGORITHM
- Split input string into array of words and downcase each word
- Split optional exception words into array and downcase each word
- For each word in input string array:
  - If it is in the exceptional word list AND not the first word, leave it alone 
  - Otherwise, titlecase it.
- Return input string array joined with spaces

=end

def title_case(input_string, exceptions='')
  input_str_arr = input_string.split.map(&:downcase)
  exceptions_arr = exceptions.split.map(&:downcase) unless exceptions.empty?

  return input_str_arr.map(&:capitalize).join(' ') if exceptions_arr.nil?

  output = input_str_arr.map.with_index do |word, idx|
    if exceptions_arr.include?(word) && !idx.zero?
      word
    else
      word.capitalize
    end
  end
  output.join(' ')
end



p title_case('a clash of KINGS', 'a an the of')   == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox')               == 'The Quick Brown Fox'