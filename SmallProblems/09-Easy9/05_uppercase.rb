# input: string
# output: bool, true if all alphabetic chars are uppercase

# rules:
#   Explicit Requirements:
#   - Ignore non-alpha chars
#   - Empty string is true


# Algorithm:
# - String -> chars
#   - Filter for alpha
#   - Check if char is uppercase
# - reduce(true) {|acc, char| acc & char.uppercase == char}

# Simplified way:
# - is true as long as no lowercase chars
# - So return none? char lowercase


def uppercase?(string)
  string.chars.none? { |char| char =~ /[a-z]/ }
end


p uppercase?('t')           #== false
p uppercase?('T')           #== true
p uppercase?('Four Score')  #== false
p uppercase?('FOUR SCORE')  #== true
p uppercase?('4SCORE!')     #== true
p uppercase?('')            #== true