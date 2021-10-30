# input: array of words
# output: array with arrays of anagrams

# Algorithm
# group_by word.chars.sort, return values of that hash


def anagrams(word_arr)
  word_arr.group_by { |word| word.chars.sort }.values.each { |word| p word }
end





words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

anagrams(words)