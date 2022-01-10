=begin

Consider the word "abode". We can see that the letter a is in position 1 
and b is in position 2. In the alphabet, a and b are also in positions 1 
and 2. Notice also that d and e in abode occupy the positions they would 
occupy in the alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of letters that 
occupy their positions in the alphabet for each word. For example,


# PROBLEM:
- input: array of strings
- output: array of integers

# Rules/Requirements
- Position in string is indexed starting at 1
- Position in alphabet: a is 1, b is 2, etc...
- For each string in input array, output array has integer of count (the
  number of characters that occupy same string index as position in alphabet)
- Case insensitive

# Questions:
- How to map a: 1, b: 2, etc?
- 


# Examples:
solve(["abode","ABc","xyzD"]) == [4,3,1]
solve(["abide","ABc","xyz"]) == [4,3,0]
solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6,5,7]
solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]


# DATA STRUCTURES
input: array of strings
output: array of integers

hash mapping character to alphabetical index
LETTER_TO_INDEX = ('a'..'z').zip(1..26).to_h

# ALGORITHM
Use transformation mapping each entry in input array to count of aligned characters
- Map Subroutine taking string to count over input array, return output array


input: string
output: count of aligned letters
count_aligned_letters(string)
- Map over characters in string with index (char, index) -> 1 if match, 0 if not
  - Downcase character -> Case Invariant
  - If the letter position in alphabet matches letter position in string, 
    return 1
- [1 1 1]
- return sum of array

  (Use hash mapping letter to index)
  LETTER_TO_INDEX[char] == index + 1
  - Return count
=end

LETTER_TO_INDEX = ('a'..'z').zip(1..26).to_h

def count_aligned_letters(string)
  match_arr = string.chars.map.with_index do |char, idx| 
    LETTER_TO_INDEX[char.downcase] == idx + 1 ? 1 : 0
  end
  match_arr.sum
end

def solve(arr) 
  arr.map { |string| count_aligned_letters(string) }
end


p solve(["abode","ABc","xyzD"])                       #== [4,3,1]
p solve(["abide","ABc","xyz"])                        #== [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])  #== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"])               #== [1, 3, 1, 3]