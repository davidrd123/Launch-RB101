=begin

For a given nonempty string s find a minimum substring t and the 
maximum number k, such that the entire string s is equal to t 
repeated k times. 

The input string consists of lowercase latin letters. 
Your function should return a tuple (in Python) (t, k) or an array 
(in Ruby and JavaScript) [t, k]



# PROBLEM:
- input: string (nonempty) `s`
- output: string `t`, integer `k`
   
# Rules/Requirements
- Find the minimum length substring `t` which can be repeated `k` times
  to form `s`


# Questions:



# Examples:
p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]


# DATA STRUCTURES
-

# ALGORITHM
- Form all substrings of the input string, sort in increasing order
- Test each substring in turn: 
  - Can it be repeated any number of times `k` and match `s`?
    - If so, return that substring + `k` in an array

generate_substrings(string)
- Initialze empty result array
- Iterate over indices of the string characters: |idx|
  - Return the substring starting at 0 up to idx
(0..string.length-1).each

input: candidate substring `t`, full string `s`
output: false if no match, 
        `k` if match
substring_tiles?(t, s)
- Initialize match_str = ''
- Initialize k = 0
- Loop:
  - Append t to match_str
  - Increment k by 1
  - If match_str == s
    - Return k
  - If match_str.length > s.length
    - Return false
- Return false
=end

def generate_substrings(string)
  result = []
  (0..string.length-1).each do |idx|
    result << string[0..idx]
  end
  result
end

def substring_tiles?(t, s)
  match_str = '' 
  k = 0
  loop do 
    match_str << t
    k += 1
    return k if match_str == s
    return false if match_str.length > s.length
  end
end

def f(string)
  substrings = generate_substrings(string)
  substrings.each do |t|
    k = substring_tiles?(t, string)
    return [t, k] if k
  end
end

# p generate_substrings("hello")

# p substring_tiles?("a", "ababab")   # false
# p substring_tiles?("ab", "ababab")  # 3
# p substring_tiles?("abcde", "abcde") # 1

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]
