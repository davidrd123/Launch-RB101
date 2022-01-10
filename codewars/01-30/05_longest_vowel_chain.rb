=begin

The vowel substrings in the word codewarriors are o,e,a,io. The longest of 
these has a length of 2. Given a lowercase string that has alphabetic 
characters only and no spaces, return the length of the longest vowel 
substring. Vowels are any of aeiou.



# PROBLEM:
- input: string (no spaces)
- output: integer (length of longest vowel substring)
   
# Rules/Requirements
- Input string has no spaces
- Vowels are [aeiou]
- Finding longest vowel substring in string

# Questions:



# Examples:
p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8


# DATA STRUCTURES
- input: string
- output: integer

# ALGORITHM
High Level:
- Initialize longest_substr_len = 0
- Scan through the string and keep a running count that starts at 0 
  [string.chars {}]
  - If the current character is a vowel
    - Increment count by 1
    - Set longest_substring to substr_len if substr_len > longest_substr_len
  - Else reset count to 0 
- Return longest_substr_len

vowel?(char)
  'aeiou'.include?(char)
end

=end
def vowel?(char)
  'aeiou'.include?(char)
end


def solve(string)
  longest_substr_len = 0
  current_substr_len = 0

  string.chars do |char|
    if vowel?(char)
      current_substr_len += 1
      if current_substr_len > longest_substr_len
        longest_substr_len = current_substr_len
      end
    else
      current_substr_len = 0
    end
  end
  longest_substr_len
end



p solve("codewarriors")           #== 2
p solve("suoidea")                #== 3
p solve("iuuvgheaae")             #== 4
p solve("ultrarevolutionariees")  #== 3
p solve("strengthlessnesses")     #== 1
p solve("cuboideonavicuare")      #== 2
p solve("chrononhotonthuooaos")   #== 5
p solve("iiihoovaeaaaoougjyaw")   #== 8
