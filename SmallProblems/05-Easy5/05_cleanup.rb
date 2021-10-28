# input: string
# output: string

# rules:
#   Explicit Requirements
#     - All non-alphanumeric chars replaced by spaces
#     - If more than one non-alphanum occur in a row -> only one space
#     - Input string is all lowercase

# Algorithm
# - Replace all non-alphabetic chars with spaces
# - Replace consecutive spaces with one space

def cleanup(string)
  string.gsub(/[^a-z]+/, ' ')
end


p cleanup("---what's my +*& line?") #== ' what s my line '