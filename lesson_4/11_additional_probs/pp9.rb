words = "the flintstones rock"

def titleize(words)
  words.split.map(&:capitalize).join(' ')
end

puts titleize(words)