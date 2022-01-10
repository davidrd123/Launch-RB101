=begin

Write a method that takes an array of strings, and returns an array of the same 
string values, except with the vowels (a, e, i, o, u) removed.

# PROBLEM:
- input: 
- output: 
   
# Rules/Requirements


# Questions:



# Examples:
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# DATA STRUCTURES


# ALGORITHM


=end

VOWELS = /[aeiouAEIOU]/

def remove_vowels(string)
  string.join(' ').gsub(VOWELS, '').split
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) #== %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white))   #== %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ))              #== ['BC', '', 'XYZ']