=begin

Given a non-empty string check if it can be constructed by taking a substring
of it and appending multiple copies of the substring together.

# PROBLEM:
- input: string
- output: boolean
   
# Rules/Requirements


# Questions:



# Examples:


# DATA STRUCTURES


# ALGORITHM
- For length 1 up to half the input string length: -> i
  - Try slicing the string into slices of size i
  - If the slices are all identical, return true
- Return false
=end


def repeated_substring_pattern(string)
  1.upto(string.length / 2) do |i|
    return true if string.chars.each_slice(i).map(&:join).to_a.uniq.size == 1
  end
  false
end


p repeated_substring_pattern("abab")          #== true
p repeated_substring_pattern("aba")           #== false
p repeated_substring_pattern("abaababaab")    #== true
p repeated_substring_pattern("abcabcabcabc")  #== true