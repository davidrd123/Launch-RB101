=begin

# PROBLEM:
- input: number
- output: print 8-pointed star
   
# Rules/Requirements


# Questions:



# Examples:
star(7)

*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *

# DATA STRUCTURES


# ALGORITHM
Helper Functions:
  print_arm_line: prints line `dist_to_center` from midline
  print_middle: prints `n` *'s
Top:
  Count from n / 2 - 1 downto 0 -> dist
    print_arm_line(dist, n)
Middle: 
  print_middle
Bottom:
  Count from 0 upto n / 2 - 1
    print_arm_line(dist, n)

=end
require 'pry'

def print_midline(n)
  p '*' * n
end

def print_arm_line(dist_to_center, n)
  spacer = ' ' * (dist_to_center - 1)
  p "*#{spacer}*#{spacer}*".center(n)
end

def star(num)
  arm_len = num / 2
  arm_len.downto(1) { |dist| print_arm_line(dist, num) }
  print_midline(num)
  1.upto(arm_len) { |dist| print_arm_line(dist, num) }
end

# binding.pry

star(7)
star(9)