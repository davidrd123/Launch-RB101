# input: integer (total number of switches)
# output: array (which lights are on after n iterations)

# rules:
#   Explicit Requirements
#   - [false, ... false] (1..n) starting state
#   First pass:
#     - Toggle all switches
#   Second pass
#     - Toggle switchers 2, 4, 6,...
#   ...
#   n-th pass
#     - Toggle switch n

# Given [true false,.. ] array
# Map to [1, nil, ... 4, nil]
# Filter out nil

require 'pry'

# Flip every nth switch
def toggle_n(arr, n)
  arr.map.with_index do |elem, idx|
    ((idx + 1) % n).zero? ? !elem : elem
  end
end

def toggle(num)
  # Use boolean array to track light state
  arr = Array.new(num) { false }
  1.upto(num) { |n| arr = toggle_n(arr, n) }
  # Map [true, false, false, true, ... ] -> [1, 4, 9]
  arr.map
     .with_index { |e, idx| e ? (idx + 1) : nil }
     .compact
end

p toggle(5)
p toggle(10)
p toggle(1000)