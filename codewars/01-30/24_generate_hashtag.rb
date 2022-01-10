=begin

5 kyu
The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!

Here's the deal:

It must start with a hashtag (#).
All words must have their first letter capitalized.
If the final result is longer than 140 chars it must return false.
If the input or the result is an empty string it must return false.


# PROBLEM:
- input: string
- output: boolean or a string
   
# Rules/Requirements
HASHTAG Creation:
- Split sentence into array of words
- Convert each word to first letter capitalized
  - Concatenate together
- If resulting string is empty or of length > 139 return false
- Otherwise Prepend '#' and return the string



# Questions:



# Examples:
p generateHashtag("") == false
p generateHashtag(" " * 200) == false
p generateHashtag("Do We have A Hashtag") == "#DoWeHaveAHashtag"
p generateHashtag("Codewars") == "#Codewars"
p generateHashtag("Codewars Is Nice") ==  "#CodewarsIsNice"
p generateHashtag("Codewars is nice") == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars") == "#CodeWars"
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a" * 139) == "#A" + "a" * 138
p generateHashtag("a" * 140) == false


# DATA STRUCTURES


# ALGORITHM
- is_valid_input(string)


=end

def generateHashtag(string)
  converted_str = string.split.map {|word| word.capitalize}.join('')

  if converted_str.length > 139 || converted_str.empty?
    false
  else
    '#' + converted_str
  end
end



p generateHashtag("")                           == false
p generateHashtag(" " * 200)                    == false
p generateHashtag("Do We have A Hashtag")       == "#DoWeHaveAHashtag"
p generateHashtag("Codewars")                   == "#Codewars"
p generateHashtag("Codewars Is Nice")           ==  "#CodewarsIsNice"
p generateHashtag("Codewars is nice")           == "#CodewarsIsNice"
p generateHashtag("code" + " " * 140 + "wars")  == "#CodeWars"
p generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat") == false
p generateHashtag("a" * 139)                    == "#A" + "a" * 138
p generateHashtag("a" * 140)                    == false
