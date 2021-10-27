SQMETERS_TO_SQFEET = 10.7639

puts 'Enter the length of the room in meters'
length = gets.chomp.to_f
puts 'Enter the height of the room in meters'
height = gets.chomp.to_f

area_m2   = length * height
area_ft2  = area_m2 * SQMETERS_TO_SQFEET

area_m2_s = format('%.2f', area_m2)
area_ft2_s = format('%.2f', area_ft2)

puts "The area of the room is #{area_m2_s} square meters (#{area_ft2_s} square feet)."