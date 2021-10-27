ORDINALS = %w[1st 2nd 3rd 4th 5th last].freeze
numbers = []

ORDINALS.each do |ord|
  puts "==> Enter the #{ord} number:"
  numbers << gets.chomp.to_i
end

first_five  = numbers.take 5
last_num    = numbers.last

result_str = if first_five.include? last_num
               'appears'
             else
               'does not appear'
             end

puts "The number #{last_num} #{result_str} in #{first_five}."
