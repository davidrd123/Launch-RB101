=begin

Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the 
alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the 
original string.

All letters will be lowercase and all inputs will be valid.


# PROBLEM:
- input: string
- output: string
   
# Rules/Requirements
- Input is a lowercase sentence 
- Find and return the highest scoring word
  - Words are separated by spaces
  - Each letter has the value of its position in the alphabet
  - If two words score the same, return the one that appears first
- All inputs will be valid

# Questions:



# Examples:
p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'


# DATA STRUCTURES


# ALGORITHM
- Init highest scoring word to ''
- Init top score to 0

- Split input sentence into words
- Iterate over each word:
  - Calculate word score
  - If word score > top score
    => update highest scoring word & top score
- Return highest scoring word
=end

def score(word)
  score = 0
  alpha = ('a'..'z').to_a
  alpha.each.with_index do |letter, idx|
    score += word.count(letter) * (idx+1)
  end
  score
end

def high(sentence)
  top_word = '' 
  top_score = 0
  sentence.split.each do |word|
    word_score = score(word)
    if word_score > top_score
      top_score = word_score
      top_word = word
    end
  end
  top_word
end

# p score('aaa') # 3
# p score('jjj') # 30
# p score('ajjj') # 31
# p score('jjja') #31

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aaa b') == 'aaa'