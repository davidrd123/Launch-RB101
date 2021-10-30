# input: string
# output: array with elements: each word word.length

# rules
#   Explicit Requirements
#   - Assume words are separated by one space
#   - Any substring of non-space chars is a word

# Algorithm:
# - Split sentence into word array
# - Map length to get array of word lengths
# - Zip these two arrays
# - Map a conversion to the string format

def word_lengths(string)
  word_arr = string.split
  word_len = word_arr.map(&:length)
  word_arr.zip(word_len).map { |pair| "#{pair[0]} #{pair[1]}" }
end


p word_lengths("cow sheep chicken")                   #== ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie")     #==
  # ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?")               #== ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious")  #==
  # ["Supercalifragilisticexpialidocious 34"]

p word_lengths("")                                    #== []