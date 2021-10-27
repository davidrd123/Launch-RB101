print "What is the Bill? "
bill = gets.chomp.to_f

print "What is the tip percentage? "
tip_percentage = gets.chomp.to_f

tip = bill * tip_percentage / 100.0
total = bill + tip

puts "The tip is $#{tip}"
puts "The total is $#{total}"