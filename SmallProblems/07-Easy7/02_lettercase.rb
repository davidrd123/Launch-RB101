# input: string
# output: hash with 3 entries
#           1. # chars lowercase
#           2. # chars uppercase
#           3. # chars neither

# rules:
#   Explicit Requirements
#     - hash keys are 'lowercase', 'uppercase', 'neither'

# Algorithm:
# string -> array of chars then:
#   1. reject all non a-z chars -> new array, get length
#   2. reject all non A-Z chars -> new array, get length
#   3. reject all a-zA-Z chars -> new array, get length

def letter_case_count(string)
  counts = {}
  counts[:lowercase] = string.chars.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = string.chars.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = string.chars.count { |char| char =~ /[^a-zA-Z]/ }
  counts
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef')   == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123')        == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('')           == { lowercase: 0, uppercase: 0, neither: 0 }