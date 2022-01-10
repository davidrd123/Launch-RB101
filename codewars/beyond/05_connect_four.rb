=begin

# PROBLEM:
- input: array of strings (row + color)
- output: "Yellow", "Red", "Draw"
   
# Rules/Requirements
- 

# Questions:



# Examples:


# DATA STRUCTURES
- 6x7 array to store board state
- Hash mapping Row letter to index

# ALGORITHM
- Break up each entry into color + row
- Add pieces in turn to each row
  
  - 
- At each turn, scan board for winner
  - Scan L->R, diag-down diag-up
- IF winner, stop and return winner
- If no winner, return "Draw"

add_piece
  - Start from the bottom, scan for the first non-nil value, set it and exti the loop

parse_move(string)
  - Split on _
  - Map letter to index
  - Map color string to value
=end
require 'pry'

NUM_ROW = 6
NUM_COL = 7
SLICE_LEN = 4
YELLOW = "Y"
RED = "R"
EMPTY = nil
MAP_WINNER = {"Y" => "Yellow", "R" => "Red"}
COL_TO_INDEX = ('A'..'G').zip(0..7).to_h
$game_board = Array.new(NUM_ROW) { |i| Array.new(NUM_COL) { |j| nil }}


# def init_game_board(row=NUM_ROW, col=NUM_COL)
def add_piece(col, color)
  (NUM_ROW-1).downto(0).each do |row|
    if $game_board[row][col].nil?
      $game_board[row][col] = color
      break
    end
  end
end

def parse_move(string)
  column, color = string.split('_')
  column_idx = COL_TO_INDEX[column]
  color_letter = color[0]
  return column_idx, color_letter
end

def read_and_make_move(move_list)
  move = move_list.shift
  column, color = parse_move(move)
  add_piece(column, color)
end

def game_has_winner?()
  winner = check_vert
  return winner unless winner.nil?
  winner = check_horiz
  return winner unless winner.nil?
  winner = check_diag
  return winner unless winner.nil?
  nil
end

# Check for vertical win:
# - Iterate over every column
#   - Transpose gameboard & pluck out column
#   - Feed into has_winner
def check_vert()
  (0..NUM_COL-1).each do |col_num|
    column = $game_board.transpose[col_num]
    winner = has_winner(column)
    return winner unless winner.nil?
  end
  nil
end

def check_horiz()
  (0..NUM_ROW-1).each do |row_num|
    row = $game_board[row_num]
    winner = has_winner(row)
    return winner unless winner.nil?
  end
  nil
end

def enumerate_diags(direction)
  # Start from particular row & column
  # decrement row, increment col, append that cell to curr_diag
  # stop when either row < 0 or col > NUM_COL
  if direction == "up"
    diagonals = []
    init_row = 3
    init_col = 0
    (init_col..(NUM_COL - SLICE_LEN)).each do |start_col|
      (init_row..(NUM_ROW - 1)).each do |start_row|
        diagonal = []
        curr_row = start_row
        curr_col = start_col
        until curr_row < 0 || curr_col > NUM_COL-1
          diagonal << $game_board[curr_row][curr_col]
          curr_row -= 1
          curr_col += 1
        end
        diagonals << diagonal
      end
    end
  end
  if direction == "down"
    diagonals = []
    init_row = 0
    init_col = 0
    (init_col..(NUM_COL - SLICE_LEN)).each do |start_col|
      (init_row..(NUM_ROW - SLICE_LEN)).each do |start_row|
        diagonal = []
        curr_row = start_row
        curr_col = start_col
        until curr_row > NUM_ROW - 1 || curr_col > NUM_COL - 1
          diagonal << $game_board[curr_row][curr_col]
          curr_row += 1
          curr_col += 1
        end
        diagonals << diagonal
      end
    end
  end
  diagonals
end

def check_diag()
  diagonals_up = enumerate_diags("up")
  diagonals_up_result = diagonals_up.map {|diag| has_winner(diag) }.compact
  return diagonals_up_result.first unless diagonals_up_result.empty?

  diagonals_down = enumerate_diags("down")
  diagonals_down_result = diagonals_down.map {|diag| has_winner(diag) }.compact
  return diagonals_down_result.first unless diagonals_down_result.empty?

  nil
end

# Checks for 4 in a row of RED or YELLOW
# - Take each_cons of 4 and check if all R or Y
# Output: nil if no winner, "Y" or "R" otherwise
def has_winner(array)
  # p array
  return RED if array.each_cons(4).any? {|slice| slice.all?(RED) }
  return YELLOW if array.each_cons(4).any? {|slice| slice.all?(YELLOW) }
  nil
end

def who_is_winner(move_list)
  until move_list.empty?
    read_and_make_move(move_list)
    winner = game_has_winner?
    if !winner.nil?
      # binding.pry
      return MAP_WINNER[winner]
    end
  end
  "Draw"
end

game_01 = [
  "C_Yellow",
  "E_Red",
  "G_Yellow",
  "B_Red",
  "D_Yellow",
  "B_Red",
  "B_Yellow",
  "G_Red",
  "C_Yellow",
  "C_Red",
  "D_Yellow",
  "F_Red",
  "E_Yellow",
  "A_Red",
  "A_Yellow",
  "G_Red",
  "A_Yellow",
  "F_Red",
  "F_Yellow",
  "D_Red",
  "B_Yellow",
  "E_Red",
  "D_Yellow",
  "A_Red",
  "G_Yellow",
  "D_Red",
  "D_Yellow",
  "C_Red"]

game_02 = ["C_Yellow",
  "B_Red",
  "B_Yellow",
  "E_Red",
  "D_Yellow",
  "G_Red",
  "B_Yellow",
  "G_Red",
  "E_Yellow",
  "A_Red",
  "G_Yellow",
  "C_Red",
  "A_Yellow",
  "A_Red",
  "D_Yellow",
  "B_Red",
  "G_Yellow",
  "A_Red",
  "F_Yellow",
  "B_Red",
  "D_Yellow",
  "A_Red",
  "F_Yellow",
  "F_Red",
  "B_Yellow",
  "F_Red",
  "F_Yellow",
  "G_Red",
  "A_Yellow",
  "F_Red",
  "C_Yellow",
  "C_Red",
  "G_Yellow",
  "C_Red",
  "D_Yellow",
  "D_Red",
  "E_Yellow",
  "D_Red",
  "E_Yellow",
  "C_Red",
  "E_Yellow",
  "E_Red"]

game_03 = ["F_Yellow",
  "G_Red",
  "D_Yellow",
  "C_Red",
  "A_Yellow",
  "A_Red",
  "E_Yellow",
  "D_Red",
  "D_Yellow",
  "F_Red",
  "B_Yellow",
  "E_Red",
  "C_Yellow",
  "D_Red",
  "F_Yellow",
  "D_Red",
  "D_Yellow",
  "F_Red",
  "G_Yellow",
  "C_Red",
  "F_Yellow",
  "E_Red",
  "A_Yellow",
  "A_Red",
  "C_Yellow",
  "B_Red",
  "E_Yellow",
  "C_Red",
  "E_Yellow",
  "G_Red",
  "A_Yellow",
  "A_Red",
  "G_Yellow",
  "C_Red",
  "B_Yellow",
  "E_Red",
  "F_Yellow",
  "G_Red",
  "G_Yellow",
  "B_Red",
  "B_Yellow",
  "B_Red"]


binding.pry
