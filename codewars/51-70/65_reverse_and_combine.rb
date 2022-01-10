=begin

Your task is to Reverse and Combine Words.

Input: String containing different "words" separated by spaces

1. More than one word? Reverse each word and combine first with second, third 
with fourth and so on...
  (odd number of words => last one stays alone, but has to be reversed too)
2. Start it again until there's only one word without spaces
3. Return your result…


# PROBLEM:
- input: string of words
- output: string (no spaces)
   
# Rules/Requirements
- If more than one word:
  - Reverse each word and combine 1st with 2nd, 3rd with 4th, &c.
  - If an odd number of words, last one stays alone but is still reversed
- Repeat the loop above until only one word

# Questions:



# Examples:


# DATA STRUCTURES


# ALGORITHM
- Keep transforming until left with only one word (no spaces)

rev_and_combine_helper(string)
- Apply one round of transformation
  - Split string into array of words
  - Map reverse across all of the words
  - use each_slice(2) to group the words into groups to combine
  - Map across the groups:
    - join the two words (or one) together into one word
  - Join the array with " " to make a sentence of the words
=end

def rev_and_combine_helper(string)
  string.split.map(&:reverse).each_slice(2).to_a.map(&:join).join(" ")
end

def is_one_word(string)
  string.split.length == 1
end


def reverse_and_combine_text(string)
  until is_one_word(string)
    string = rev_and_combine_helper(string)
  end
  string
end

p rev_and_combine_helper("abc def ghi jkl") #
p rev_and_combine_helper("abc def ghi") #
# p is_one_word("afasdfa") # true
# p is_one_word("dasfd adfa") # false

p reverse_and_combine_text("abc def") == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
