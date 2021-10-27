print "What is your name? "
name = gets.chomp

screaming = false
if name[-1] == '!'
  screaming = true
  name = name[0..-2]
end

if screaming
  puts "Hello #{name}. Why are we screaming?".upcase
else
  puts "Hello #{name}."
end
