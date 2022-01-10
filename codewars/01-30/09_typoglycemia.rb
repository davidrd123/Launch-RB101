=begin

There is a message that is circulating via public media that claims a reader 
can easily read a message where the inner letters of each words is scrambled, 
as long as the first and last letters remain the same and the word contains all 
the letters.

Another example shows that it is quite difficult to read the text where all the 
letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern, 
but instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:

1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Assumptions

1) words are seperated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata punctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation



# PROBLEM:
- input: string (sentence)
- output: string (sentence with each word scrambled)
   
# Rules/Requirements
- Only spaces separate words
- Special characters don't take the position of the non special characters ???? 
- Punctuation: - | ' | , | .
- Ignore capitialization
- First and last characters stay the same (ignore punctuation for first & last)

# Questions:



# Examples:
p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."



# DATA STRUCTURES


# ALGORITHM
- If sentence is empty string, return empty string
- Break sentence into array of words
- Apply scramble to each word in array
- Join array back to string and return

input: string `word`
ouput: string `scrambled_word`
scamble(word)
- Strip out punctuation -> cleaned_word, store punctuation in punct_arr
- first_char = cleaned_word.shift
- last_char = cleaned_word.pop
- cleaned_word.chars.sort.join


input: string `word`
output: array of word with punctuation removed, and array of [[punctuation char, index of char], ...]
strip_punctuation(word)
- Scan through each character in word
  - If punctuation, push [char, idx] to punctuation arrray
  - Else push character to cleaned_word

insert_punctuation(word, punct_arr)
- Iterate over punct_arr
  - Insert char into word at idx

=end
require 'pry'

def strip_punctuation(word)
  cleaned_word = ''
  punctuation = []
  word.chars.each.with_index do |char, idx|
    if char =~ /[.,'-]/
      punctuation << [char, idx]
    else
      cleaned_word << char
    end
  end
  [cleaned_word, punctuation]
end

def insert_punctuation(word, punct_arr)
  punct_arr.each do |char, idx|
    word.insert(idx, char)
  end
  word
end

def scramble(word) 
  return word if word.length == 1
  cleaned_word, punct_arr = strip_punctuation(word)
  scrambled_word = cleaned_word[0] + cleaned_word[1..-2].chars.sort.join + cleaned_word[-1]
  scrambled_word_with_punct = insert_punctuation(scrambled_word, punct_arr)
  scrambled_word_with_punct
end

def scramble_words(sentence)
  return '' if sentence.empty? 
  sentence.split.map { |word| scramble(word) }.join(' ')
end

# p string_punctuation('card-carrying')
# p insert_punctuation('cardcarrying', [["-", 4]])

# binding.pry
p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i')             == 'i'
p scramble_words('')              == ''
p scramble_words('me')            == 'me'
p scramble_words('you')           == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't")        == "sahn't"
p scramble_words('-dcba')         == '-dbca'
p scramble_words('dcba.')         == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."
