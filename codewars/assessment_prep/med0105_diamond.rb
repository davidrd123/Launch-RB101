=begin

Write a method that displays a 4-pointed diamond in an n x n grid, where n is 
an odd integer that is supplied as an argument to the method. You may assume that 
the argument will always be an odd integer.

# PROBLEM:
- input: odd integer
- output: (printed to screen) - 4-pointed diamond in n x n grid
   
# Rules/Requirements
- Input is odd integer
- printing an n x n grid
  - First line is blank
  - Center of diamond is in the middle, 1 *
  - Diamond grows to next odd integer 1->3->5->...->n
  - Middle of diamond is n chars long, filling grid width
  - Diamond shrinks n->n-2->...3->1

# Questions:



# Examples:
diamond(3)

 *
***
 *
 
diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
n = 9


# DATA STRUCTURES


# ALGORITHM
- Print empty line
- 1.upto(n).step(2) -> i
  - output_line(i, n)
- (n-2).downto(1).filter(&:odd?) -> i
  - output_line(i, n)
  
gen_line(i, n)
  - Print to screen i *'s centered in array of n

=end


def gen_line(i, n)
  line = "#{'*' * i}".center(n)
end

def diamond(n)
  print
  1.upto(n).filter(&:odd?).each { |i| p gen_line(i, n) }
  (n-2).downto(1).filter(&:odd?).each { |i| p gen_line(i, n) }
end

diamond(9)