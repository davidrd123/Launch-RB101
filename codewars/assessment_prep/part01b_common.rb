=begin

Given an array of strings made only from lowercase letters, return an array
of all characters that show up in all strings within the given array 
(including duplicates)

For example, if a character occurs 3 times in all strings but not 4 tiems, 
you need to include that character three times in the final answer

# PROBLEM:
- input: array of strings
- output: array of every common that appears in all of the strings
   
# Rules/Requirements
- Find the chararacters that occur in all strings
- include them with the same common count in the output array

# Questions:
- If a character 'm' occurs 2, 2, 3 in input words -> ['m', 'm']?


# Examples:


# DATA STRUCTURES
- Hash mapping letters -> count

# ALGORITHM
- Find which characters are in common between the words -> common_chars
- Populate the hash with common_chars as keys and for their value:
  - The minimum count of that character in any word in the input array
- Build up an output array:
  - Init result to []
  - Iterate over hash keys: |letter, count|
    - Append letter to result count times
- Return result

=end

def gen_common_chars(arr)
  common = []
  arr.first.chars.uniq.each do |letter|
    if arr.all? { |word| word.include?(letter) }
      common << letter
    end
  end
  common
end



def common_chars(arr)
  common = gen_common_chars(arr)
  hash = Hash.new { 0 }
  common.each {|letter| hash[letter] = arr.map { |word| word.count(letter) }.min }
  result = []
  hash.each do |letter, count|
    result << [letter] * count
  end
  result.flatten
end



p common_chars(['bella', 'label', 'roller'])                        #== ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook'])                            #== ['c', 'o']
p common_chars(['hello', 'goodbye', 'booya', 'random'])             #== ['o']
p common_chars(['aabbaaa', 'ccdddd', 'eeffee', 'ggrrr', 'yyyzzz'])  #== []