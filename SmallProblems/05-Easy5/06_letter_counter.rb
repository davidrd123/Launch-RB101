# input: string
# output: hash mapping size of word to # of words of that size

# rules:
#   Explicit Requirements
#     - Words are delimited by spaces
#   Implicit Requirements
#     - Punctuation is glommed onto the connected word and counted as part of it

# Algorithm:
# 1. Initialize hash map with block providing devault 0 value as return variable
# 2. Split string on spaces -> word array  : ['a', 'large', 'cat', ...]
# 3. Map over word array with `length` method  [1, 5, 3, ...]
# 4. Iterate over word array -> word
#    - Increment hash[word] by 1
# 5. Return the hash

def word_sizes(str)
  str.split.map(&:length).each_with_object(Hash.new(0)) { |word_len, hsh| hsh[word_len] += 1 }
end

p word_sizes('Four score and seven.')                       == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!')  == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?")                              == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('')                                            == {}