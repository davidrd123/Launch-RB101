# input: three integers
# output: letter grade corresponding to grade avg

# rules: 
#   Explicit Requirements
#   - All integers are between 0 and 100.

# Algorithm:
# - Calculate average
# - Output corresponding grade

def get_grade(*grades)
  grade_avg = grades.sum.to_f / grades.size
  
  case grade_avg
  when 90..100 then 'A'
  when 80...90 then 'B'
  when 70...80 then 'C'
  when 60...70 then 'D'
  else              'F'
  end
end



p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"