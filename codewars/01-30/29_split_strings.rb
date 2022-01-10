=begin

Complete the solution so that it splits the string into pairs of two characters. 
If the string contains an odd number of characters then it should replace the 
missing second character of the final pair with an underscore ('_').


# PROBLEM:
- input: string
- output: array of strings
   
# Rules/Requirements
- Split the input string into consecutive pairs of chararacters, outputting
  each pair to the output array
  - If the input string is of odd length, then output the missing second char
    of the final pair with an underscore
- Empty string goes to empty array

# Questions:



# Examples:
p solution('abc') == ['ab', 'c_']
p solution('abcdef') == ['ab', 'cd', 'ef']
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []


# DATA STRUCTURES


# ALGORITHM
- Initialize output array to []
- Iterate over the input string in slices of size 2:
  - For each slice:
    - If of size 1, append "_" to slice
    - Append slice joined to string to output array
- Return output array

=end

def solution(string)
  result = []
  string.chars.each_slice(2) do |slice|
    slice << '_' if slice.length == 1
    result << slice.join
  end
  result
end

p solution('abc')     == ['ab', 'c_']
p solution('abcdef')  == ['ab', 'cd', 'ef']
p solution("abcdef")  == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("")        == []