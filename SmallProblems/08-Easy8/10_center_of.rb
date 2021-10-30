# input: string
# output: middle char/chars of input

# rules:
#   Explicit Requirements
#   - If string has odd length, return exactly one char
#   - If string has even length, return exactly two chars
#   str.len == 11 -> return str[5] (length / 2)
#   str.len == 6 -> str[2..3] (length / 2 - 1)..(length / 2)

def center_of(string)
  n = string.length
  n.odd? ? string[n / 2] : string[(n / 2 - 1)..(n / 2)]
end


p center_of('I love ruby')    #== 'e'
p center_of('Launch School')  #== ' '
p center_of('Launch')         #== 'un'
p center_of('Launchschool')   #== 'hs'
p center_of('x')              #== 'x'