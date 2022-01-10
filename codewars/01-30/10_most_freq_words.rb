=begin

Write a function that, given a string of text (possibly with punctuation and 
  line-breaks), returns an array of the top-3 most occurring words, in descending 
  order of the number of occurrences.

Assumptions:
  A word is a string of letters (A to Z) optionally containing one or more apostrophes 
  (') in ASCII. (No need to handle fancy punctuation.)

  Matches should be case-insensitive, and the words in the result should be lowercased.

  Ties may be broken arbitrarily.

  If a text contains fewer than three unique words, then either the top-2 or top-1 
  words should be returned, or an empty array if a text contains no words.


# PROBLEM:
- input: string 
- output: array of top 3 most occurring words, in descending order of # of occurances
   
# Rules/Requirements
- Word is a string of letters, plus optionally 1+ apostrophes
- Match case-insensitive, return words lowercased
- Break ties arbritrarily
- If fewer than 3 unique words, return top-2, top-1
- If no words, return empty array 

# Questions:
- How do we handle words with dashes?


# Examples:
p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
p top_3_words("  //wont won't won't ") == ["won't", "wont"]
p top_3_words("  , e   .. ") == ["e"]
p top_3_words("  ...  ") == []
p top_3_words("  '  ") == []
p top_3_words("  '''  ") == []
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]



# DATA STRUCTURES


# ALGORITHM
- Convert string to array of words
- Create hash to count words
- For each word, increment value of k/v pair by 1
- Sort hash by value in decreasing order, take first 3 -> result hash
- Return the keys of result hash in an array

input: array of words
output: count hash for words
word_array_to_count_hash(arr)
- Initialize Hash to default 0 value
- Iterate over array:
  - Increment each h[value] by 1 for the given key
- Return hash

input: string 
output: array of words
sentence_to_word_array
- Split on spaces to prospective words
- For each prospective word:
  - Drop if it doesn't contain any letters
  - Downcase
  - Delete non-alpha, non-aposrophe characters


=end

def sentence_to_word_array(string)
  word_array = string.split
  word_array.map!(&:downcase)
  word_array.select! {|word| word =~ /[a-z]/ }
  word_array.map! do |word|
    word = word.chars.select { |char| char =~ /[a-z']/ }.join
    word
  end
  word_array
end

def word_array_to_count_hash(arr)
  count_hash = Hash.new(0)
  arr.each do |word|
    count_hash[word] += 1
  end
  count_hash
end

def count_hash_to_top_3(hash)
  top_3 = hash.sort_by {|k, v| v}.reverse.take(3)
end

def top_3_words(string)
  word_array = sentence_to_word_array(string)
  count_hash = word_array_to_count_hash(word_array)
  top_3 = count_hash_to_top_3(count_hash).to_h
  top_3.keys
end


p top_3_words("In a village of La Mancha, the //name of which I don't have no desire I no good... ,")


p top_3_words("a a a  b  c c  d d d d  e e e e e")                      == ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")  == ["e", "ddd", "aa"]
p top_3_words("  //wont won't won't ")                                  == ["won't", "wont"]
p top_3_words("  , e   .. ")                                            == ["e"]
p top_3_words("  ...  ")                                                == []
p top_3_words("  '  ")                                                  == []
p top_3_words("  '''  ")                                                == []
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to mind, there lived not long since one of those gentlemen that keep a lance in the lance-rack, an old buckler, a lean hack, and a greyhound for coursing. An olla of rather more beef than mutton, a salad on most nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]
