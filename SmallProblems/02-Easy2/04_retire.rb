print "What is your age? "
age = gets.chomp.to_i
print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

curr_year = 2021
years_to_go = retirement_age - age
retirement_year = curr_year + years_to_go

puts "It's #{curr_year}. You will retire in #{retirement_year}"
puts "You only have #{years_to_go} years of work to go!"