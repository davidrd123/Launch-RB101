# input: string
# output: string (second-to-last word)

# rules:
#   Explicit Reqs
#   - Input string will always contain at least two words
#   - Words are any seq of non-blank

# Algorithm
# - Split input string on spaces -> word array
# - Return word_arr[-2]

def penultimate(string)
  string.split[-2]
end


p penultimate('last word')                #== 'last'
p penultimate('Launch School is great!')  #== 'is'