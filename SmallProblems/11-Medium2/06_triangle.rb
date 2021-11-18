=begin

To be a valid triangle, the sum of the angles must be exactly 180 degrees, 
and all angles must be greater than 0: if either of these conditions is not 
satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns 
a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle 
is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating 
point errors. You may also assume that the arguments are specified in degrees.


# PROBLEM:
- input: three integers (angles of triangle in degrees)
- output: { :right | :acute | :obtuse | :invalid }
   
# Rules/Requirements
- A valid triangle has angles that sum to 180 and are all > 0
- A right angle has one angle that is 90 degrees
- An acute triangle has all angles < 90 degrees
- An obtuse triangle has one angle > 90 degrees

# Questions:



# Examples:
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

# DATA STRUCTURES
input: 3 integers
intermediate: array of angles
output: symbol

# ALGORITHM
- Check if is valid triangle
  - If not, return :invalid
- Check if one angle is > 90
  - If so, return :obtuse
- Check if one angle is == 90
  - If so, return :right
- Otherwise
  - Return :acute

=end

def valid?(angles)
  angles.sum == 180 && angles.all?(&:positive?)
end

def triangle(*angles)
  return :invalid unless valid?(angles)

  if angles.max > 90
    :obtuse
  elsif angles.max == 90
    :right
  else
    :acute
  end
end



p triangle(60, 70, 50)  #== :acute
p triangle(30, 90, 60)  #== :right
p triangle(120, 50, 10) #== :obtuse
p triangle(0, 90, 90)   #== :invalid
p triangle(50, 50, 50)  #== :invalid