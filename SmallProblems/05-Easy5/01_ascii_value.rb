# input: string
# output: integer

# rules:
#     Explicit Requirements
#       - Return sum of the ASCII values of every character in the string
#       - Empty string returns 0

# Algorithm
# - Split string into char array
# - Sum = Reduce over char array:
#   - Starting value = 0
#   - Acc += ord(char)

def ascii_value(string)
  string.bytes.reduce(0, :+)
end


puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0