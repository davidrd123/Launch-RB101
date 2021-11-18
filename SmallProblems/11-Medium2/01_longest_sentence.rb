=begin
input: string (text file)
output: string (longest sentence)
         integer (number of words in longest sentence)

rules:
  Explicit Requirements:
  - Takes in a text file, outputs longest sentence
  - Sentences end with . ! ?
    - Any seq of chars that are not spaces or end-of-sent
      chars is a word

Questions:
  - How to handle newlines in text
    - some words are just separated by "\r\n", no spaces: how to handle this?


Algorithm:
- Split text into sentences
  - Split text on /\.|!|\?]/
    - End up with array of sentences -> sentences_arr
  - Map array of sentences to number of words in sentence -> sent_length_arr
- Find index of largest value in sent_length array
  - Return sentence at that index + print sentence length

  Subroutine: 
    input: blank-separated words
    output: number of words
    - Split on blank
    - Count array length

=end
require 'pry'

def number_of_words(sentence)
  sentence.split(' ').length
end

def text_to_sentences(text)
  text.gsub!(/\r/, '')
  text.gsub!("\n", ' ').split(/\.|\?|!/)
end

def find_longest_sentence_alt(text)
  sentences = text_to_sentences(text)
  longest_sentence = sentences.max_by { |sentence| number_of_words(sentence) }
  # sentence_len_arr = sentences.map { |sentence| number_of_words(sentence) }
  # len, idx = sentence_len_arr.each_with_index.max
  puts "The longest sentence has #{longest_sentence.length} words."
  puts 'Here it is: '
  puts longest_sentence
end


def find_longest_sentence(file_name)
  text = File.read(file_name)
  sentences = text_to_sentences(text)
  sentence_len_arr = sentences.map { |sentence| number_of_words(sentence) }
  len, idx = sentence_len_arr.each_with_index.max
  puts "The longest sentence has #{len} words."
  puts 'Here it is: '
  # binding.pry
  puts sentences[idx]
end

test_sentences = <<-EOS
Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.
EOS


# find_longest_sentence_alt(test_sentences)

find_longest_sentence('./pg84.txt')