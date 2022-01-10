=begin

Write function scramble(str1, str2) that returns true if a portion of str1 characters can rearranged to match str2, false otherwise.

# PROBLEM:
- input: string
- output: boolean
   
# Rules/Requirements
- Return true if a portion of str1 characters can be rearranged to match str2, false otherwise.

# Questions:



# Examples:
p scramble('javaass', 'jjss') # false
p scramble('rkqodlw', 'world') # true
p scramble('cedewaraaossoqqyt', 'codewars') # true
p scramble('katas', 'steak') # true
p scramble('scriptjava', 'javascript') # true


# DATA STRUCTURES


# ALGORITHM
- Create count hashes for the letters in str1 & str2
- If all the characters in str2 are present and have a count < their count in str1,
  return true
  - For char in str2 hash, count in str1 <= count in str2

=end

def gen_count_hash(string)
  string.chars.tally
end

def scramble(str1, str2) 
  str1_hash = gen_count_hash(str1)
  str2_hash = gen_count_hash(str2)
  
  str2_hash.all? do |char, count| 
    count <= str1_hash.fetch(char, 0)
  end
end

# p gen_count_hash("dceab")

p scramble("dceab", "cba") # true
p scramble('javaass', 'jjss') # false
p scramble('rkqodlw', 'world') # true
p scramble('cedewaraaossoqqyt', 'codewars') # true
p scramble('katas', 'steak') # false
p scramble('scriptjava', 'javascript') # true
