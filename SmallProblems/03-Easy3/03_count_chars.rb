print 'Please write word or multiple words: '
input = gets.chomp

num_char = input.split
                .map(&:length)
                .reduce(0, :+)

puts "There are #{num_char} characters in \"#{input}\"."