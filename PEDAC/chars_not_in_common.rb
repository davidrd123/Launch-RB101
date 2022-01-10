=begin
Algorithm
- Initialize an empty result array
- For each character in the first string
  - If that character is not in the second string
    - Add that character to the result array
- For each character in the second string
  - If that character is not in the first string
    - Add that character to the result array
- Join the result array to a string and return it.
=end

def unique_string_characters2(str1, str2)
  result = []
  str1.chars.each do |c|
    result << c unless str2.include?(c)
  end
  str2.chars.each do |c|
    result << c unless str1.include?(c)
  end
  result.join
end

def unique_string_characters(str1, str2)
  ((str1.chars - str2.chars) + (str2.chars - str1.chars)).join
end


p unique_string_characters("xyab","xzca") #== "ybzc"
p unique_string_characters("a","z")       #== "az"
p unique_string_characters("abcd","de")   #== "abce"
p unique_string_characters("abc","abba")  #== "c"
p unique_string_characters("xyz","zxy")   #== ""