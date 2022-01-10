=begin

You live in the city of Cartesia where all roads are laid out in a perfect grid. 
You arrived ten minutes too early to an appointment, so you decided to take the 
opportunity to go for a short walk. The city provides its citizens with a Walk 
Generating App on their phones -- everytime you press the button it sends you 
an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). 

You always walk only a single block in a direction and you know it takes you one 
minute to traverse one city block, so create a function that will return true 
if the walk the app gives you will take you exactly ten minutes (you don't want 
to be early or late!) and will, of course, return you to your starting point. 
Return false otherwise.

Note: you will always receive a valid array containing a random assortment of 
direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty 
array (that's not a walk, that's standing still!).


# PROBLEM:
- input: array of chars 
- output: boolean 
   
# Rules/Requirements
- Valid walk 
  - has ten blocks
  - ends up where you started
- 2D grid and segments of length +/- 1 along x and y axis (n/s - y e/w - x)
- Direction list will never be empty

# Questions:

# Examples:
p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false


# DATA STRUCTURES
- Keep track of current position: [x, y]

# ALGORITHM
- Check if direction list is of length ten
  - Return false if not
- Step through direction list and update current position
  - Initialize current_pos to [0, 0]
  - For each element:
    - Update current_pos
      e: x += 1
      w: x -= 1
      n: y += 1
      s: y -= 1
- If we end up at [0, 0]
  - Then return true
- Else return False
=end
require 'pry'

def update_position(current_pos, step)
  case step
  when 'e'
    current_pos[0] += 1
  when 'w'
    current_pos[0] -= 1
  when 'n'
    current_pos[1] += 1
  when 's'
    current_pos[1] -= 1
  end
end


def is_valid_walk(direction_list)
  return false if direction_list.length != 10

  current_pos = [0, 0]
  direction_list.each do |step|
    update_position(current_pos, step)
  end
  return false if current_pos != [0, 0]
  
  true
end

# binding.pry

# p update_position([0, 0], 'e') == [1, 0]
# p update_position([0, 0], 'w') == [-1, 0]
# p update_position([0, 0], 'n') == [0, 1]
# p update_position([0, 0], 's') == [0, -1]

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false