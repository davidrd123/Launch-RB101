require 'pry'

EMPTY = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
MARKER_TO_PLAYER = {
  'X' => 'Player',
  'O' => 'Computer'
}

WINNING_LINES = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [3, 5, 7],
  [1, 5, 9],
  [1, 4, 7],
  [2, 5, 8],
  [3, 6, 9]
]

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(b)
  system "clear"
  puts "You're an #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
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

def joinor(arr, sep=', ', conjunction='or')
  return '' if arr.empty?
  
  all_but_last = arr[0..-2].join(sep)
  last = arr.last
  if all_but_last.length == 1
    all_but_last + ' ' + conjunction + ' ' + last.to_s
  else
    all_but_last + sep + conjunction + ' ' + last.to_s
  end
end

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = EMPTY }
  new_board
end

def empty_squares(board)
  board.keys.select { |num| board[num] == EMPTY }
end

def player_places_piece!(brd)
  square = nil
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd), ', ')}):"
    square = gets.chomp.to_i
    # break if board[square] == ' '
    break if empty_squares(brd).include?(square)

    prompt "Invalid move. Please try again."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    line_markers = line.map { |idx| brd[idx] }
    [PLAYER_MARKER, COMPUTER_MARKER].each do |marker|
      return MARKER_TO_PLAYER[marker] if line_markers.all?(marker)
    end
  end
  nil
end

loop do
  board = initialize_board

  loop do
    display_board(board)
    player_places_piece!(board)

    break if someone_won?(board) || board_full?(board)

    computer_places_piece!(board)
    break if someone_won?(board) || board_full?(board)
  end

  display_board(board)

  if someone_won?(board)
    prompt "#{detect_winner(board)} won!"
  else
    prompt "It's a tie!"
  end

  prompt "Play again? (y or n)"
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe! Good bye!"
