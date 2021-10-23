famous_words = "seven years ago..."
four_score = "Four Score and "

# way 1 (new string created)
famous_words1 = four_score + famous_words
puts famous_words1

# way 2 (destructive)
famous_words.prepend(four_score)
puts famous_words

# RESET
famous_words = "seven years ago..."
four_score = "Four Score and "

# way 3 (destructive)
four_score.concat(famous_words)
puts four_score

# RESET
famous_words = "seven years ago..."
four_score = "Four Score and "

# way 4 (destructive)
four_score << famous_words
puts four_score