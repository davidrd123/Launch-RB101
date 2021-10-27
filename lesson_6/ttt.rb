require 'pry'

X = 'X'
O = 'O'

def initialize_state
  [[' ', ' ', ' '],
   [' ', ' ', ' '],
   [' ', ' ', ' ']]
end

def display_row(row)
  # binding.pry
  row.each.with_index do |square, index|
    print ' ' if square.nil?
    print square
    print '|' if index < 2
  end
  puts
end

def display_board(board)
  board.each.with_index do |row, index|
    display_row(row)
    puts '-----' if index < 2
  end
end


board = initial_state
display_board(board)