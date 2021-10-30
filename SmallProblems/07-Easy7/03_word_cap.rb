# input: string sentence
# output: string with each word captitalized

# rules:
#   Explicit Requirements
#   - Words are any non-blank sequences of characters
#   - If the first character is non-alpha, it stays the same

# Algorithm:
# - Split string into array of words
# - Map capitalize over the array of words
#   - If word[0] =~ /[a-z]/ then word[0].upcase + word[1..-1]
#   - Otherwise, leave the first character as-is

def word_cap(sentence)
  sentence.split.map(&:capitalize).join(' ')
end



p word_cap('four score and seven')    == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'