=begin

To be a valid triangle, the sum of the lengths of the two shortest sides must 
be greater than the length of the longest side, and all sides must have lengths 
greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, 
and returns a symbol :equilateral, :isosceles, :scalene, or :invalid 
depending on whether the triangle is equilateral, isosceles, scalene, or invalid.


# PROBLEM:
- input: three floats (length of triangle's sides)
- output: (:equilateral | :isosceles | :scalene | :invalid )
   
# Rules/Requirements
- :equilateral has all 3 sides of equal length
- :isosceles has 2 sides of equal length, 1 different
- :scalene has 3 sides of different length
- :invalid doesn't satisfy these conditions:
  - Sum of length of two shortest sides greater than length of longest side
  - All sides have lengths greater than 0

# Questions:



# Examples:
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

# DATA STRUCTURES


# ALGORITHM
valid?
- Check if lengths make a valid triangle
    * Check all lengths > 0
    * Find two shortest sides, check if sum > other side
      - Find two shortest sides:
        - Sort array of sides, take first two
      - Is invalid if sum of two smallest is less than or equal to longest
  - If not, return false; otherwise return true

triangle
- If not valid? 
  -> return :invalid
- Check first if all 3 sides equal
  -> equilateral
- Check if 2 sides equal
  -> isosceles
- Otherwise
  -> scalene

=end

# (17:00)

def valid?(s1, s2, s3)
  sorted_sides = [s1, s2, s3].sort
  return false if sorted_sides.take(2).sum <= sorted_sides.last
  sorted_sides.none?(&:zero?)
end

def triangle(s1, s2, s3)
  return :invalid unless valid?(s1, s2, s3)
  return :equilateral if s1 == s2 && s2 == s3
  return :isosceles if s1 == s2 || s2 == s3 || s1 == s3
  :scalene
end



p triangle(3, 3, 3)   #== :equilateral
p triangle(3, 3, 1.5) #== :isosceles
p triangle(3, 4, 5)   #== :scalene
p triangle(0, 3, 3)   #== :invalid
p triangle(3, 1, 1)   #== :invalid