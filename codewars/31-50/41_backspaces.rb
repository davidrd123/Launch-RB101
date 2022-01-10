=begin
Assume "#" is like a backspace in string. This means that string "a#bc#d" 
actually is "bd"

Your task is to process a string with "#" symbols.


# PROBLEM:
- input: string
- output: string
   
# Rules/Requirements
- For the input string:
  - A # means to delete the first non-# char earlier in the string
  - If there are no non-# to the left, no effect

# Questions:



# Examples:
"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""
p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == ""


# DATA STRUCTURES


# ALGORITHM
REPEAT:
- Starting from the beginning of the string, find the first #, delete it and
  the first non-# character to the left of it
- Quit when string has no more #

scan_and_delete_one(string):
- Start from left, scan through string to find first non-#
  - If none found, delete the #
  - If one found, delete it and the #

scan_and_delete_one(string):
- Find first #
- Delete first non-# to the left

delete_first_alpha_to_left(string, idx)
- Delete first alpha char to left of idx in string
=end
def delete_first_alpha_to_left(string, idx)
  (idx-1).downto(0).each do |i|
    if string[i] != '#'
      string.slice!(i)
      return string
    end
  end
end

def scan_and_delete_one(string)
  string.chars.each.with_index do |char, idx|
    if char == '#'
      string.slice!(idx)
      delete_first_alpha_to_left(string, idx)
      return string
    end
  end
end

def clean_string(string)
  until string.count('#').zero?
    scan_and_delete_one(string)
  end
  string
end

# p delete_first_alpha_to_left('abc#d##c', 3)
# p scan_and_delete_one('abc#d##c')      # "abd##c"
# p scan_and_delete_one('abc####d##c#')  # "ab###d##c#"

p clean_string('abc#d##c')      #== "ac"
p clean_string('abc####d##c#')  #== ""