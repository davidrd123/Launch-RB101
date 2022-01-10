=begin

You have a bank of switches before you, numbered from 1 to n. Each switch is 
connected to exactly one light that is initially off. You walk down the row of 
switches and toggle every one of them. You go back to the beginning, and on this 
second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go 
back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat 
this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and returns 
an Array that identifies which lights are on after n repetitions.

# PROBLEM:
- input: integer n
- output: array that identifies which lights are on after n repetitions
   
# Rules/Requirements
- n switches, all initially off
- Make n passes
  - On first pass, toggle every switch
  - On second pass, toggle 2, 4, 6,... 
  - On third pass, toggle 3, 6, 9, ...
- 
# Questions:



# Examples:
Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# DATA STRUCTURES
- Array of length n+1, of boolean values (ignoring index 0)

# ALGORITHM
- Initialize switch array [false, ... false] (length n+1), ignore idx 0
- Iterate n times -> |i|, 1..n
  - array = flip_every_n(array, n)
- [true, false, true... ] -> [1, 3,...]
return map_to_true_indices(array)

flip_every_n(boolean array of length n)
  - Iterate from 1 to (length of array - 1) -> idx
  - array[idx] = !array[idx] if idx % n == 0 (if n divides evenly into the index we're looking at)
  
map_to_true_indices(array) - array of length n+1
  - initialize empty result array
  - Iterate over elements of array with index
  - Ignore idx = 0
  - If array[idx] is true, append idx to result array
  - return result array
=end

def init_switches(n)
  [false] * (n + 1)
end

def flip_every_n(switches, n)
  switches.map.with_index { |switch_val, idx| (idx % n).zero? ? !switch_val : switch_val }
end

def map_to_indices(switches)
  switches.filter_map.with_index { |switch_val, idx| idx if switch_val}
end

def on_lights(n)
  switch_array = init_switches(n)
  (1..n).each { |i| switch_array = flip_every_n(switch_array, i) }
  map_to_indices(switch_array)
end

p on_lights(10) # [1, 4, 9]

# switches = [false] * (10 + 1)
# switches = flip_every_n(switches, 2)
# switches.filter_map
# p switches
