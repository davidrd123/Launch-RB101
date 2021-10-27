require 'pry'

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(b)
  puts ""
  puts "     |     |"
  puts "  #{b[1]}  |  #{b[2]}  |  #{b[3]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{b[4]}  |  #{b[5]}  |  #{b[6]}  "
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{b[7]}  |  #{b[8]}  |  #{b[9]}  "
  puts "     |     |"
  puts ""
end

def initialize_board
  new_board = {}
  (1..9).each {|num| new_board[num] = ' '}
  new_board
end

def player_places_piece(board)
  square = nil
  loop do
    prompt "Choose a square (1-9):"
    square = gets.chomp.to_i
    break if board[square] == ' ' 
    prompt "Invalid move. Please try again."
  end
  board[square] = 'X'
end

board = initialize_board
display_board(board)

loop do
  player_places_piece(board)
  p board
  display_board(board)
end


# binding.pry