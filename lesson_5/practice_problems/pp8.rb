hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

word_arr = hsh.values.flatten

# hsh.values.flatten.each do |word|
#   p word.gsub(/[^aeiou]/i, '')
# end

# word_arr.map! do |word|
#   word.gsub(/[^aeiou]/i, '')
# end

VOWELS = 'aeiou'

def put_if_vowel(char)
  puts char if vowels.include?(char)
end

def vowel?(char)
  VOWELS.include?(char)
end

chars_of_hsh = hsh.values
                  .flatten        # ['the', 'quick', 'brown', 'fox', ...]
                  .map(&:chars)   # [['t', 'h', 'e'], ['q', 'u', 'i', 'c', ...]]
                  .flatten        # ['t', 'h', 'e', 'q', ...]
                  .filter(&method(:vowel?))  # ['e', 'u', 'i', ]

p chars_of_hsh
# p (chars_of_hsh.filter {|c| vowel?(c) })


hsh.each do |_, v|
  v.each do |word|
    word.chars.each do |char|
      puts char if vowel?(char)
    end
  end
end