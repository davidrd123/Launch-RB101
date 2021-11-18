=begin
Write a method that computes the difference between the square of the sum of 
the first n positive integers and the sum of the squares of the first n 
positive integers.


# PROBLEM:
- input: integer
- output: integer
   
# Rules/Requirements
- Compute diff btw 
    - square of the sum of the first n positive integers
    - sum of the squares of the first n positive integers

# Questions:



# Examples:
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

# DATA STRUCTURES


# ALGORITHM
- sum first n integers then square that
- create array of squares of first n integers, sum that

=end

def square_of_sum(num)
  (1..num).sum**2
end

def sum_of_squares(num)
  (1..num).map(&:abs2).sum
end

def sum_square_difference(num)
  square_of_sum(num) - sum_of_squares(num)
end


p sum_square_difference(3)    #== 22
p sum_square_difference(10)   #== 2640
p sum_square_difference(1)    #== 0
p sum_square_difference(100)  #== 25164150