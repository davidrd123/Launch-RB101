=begin

Complete the function scramble(str1, str2) that returns true if a portion of 
str1 characters can be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered
Input strings s1 and s2 are null terminated.


# PROBLEM:
- input: two strings
- output: boolean
   
# Rules/Requirements
- Strings composed only of lowercase characters

# Questions:
- Reframe:
  - Find if all the chararcers in str2 are found in str1
OR
  - Check if count of each character found in str2 is <= count of that char
    in str1 

# Examples:
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('rkqodlw','world') == true
p scramble('cedewaraaossoqqyt','codewars') == true
p scramble('katas','steak') == false
p scramble('scriptjava','javascript') == true
p scramble('scriptingjava','javascript') == true


# DATA STRUCTURES
 

# ALGORITHM
- For each char in str2:
  - Get count of that character
  - Check if count of that char in str2 is > str1 count
    - If so return false
- Return true
=end

def scramble(str1, str2)
  str2.chars.uniq.each do |char|
    str2_count = str2.chars.count(char)
    str1_count = str1.chars.count(char)
    # print "#{char}, #{str1_count}, #{str2_count}, '\n'"
    return false if str2_count > str1_count
  end
  return true
end


p scramble('rkqodlw', 'world')              == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak')                == false
p scramble('rkqodlw','world')               == true
p scramble('cedewaraaossoqqyt','codewars')  == true
p scramble('katas','steak')                 == false
p scramble('scriptjava','javascript')       == true
p scramble('scriptingjava','javascript')    == true