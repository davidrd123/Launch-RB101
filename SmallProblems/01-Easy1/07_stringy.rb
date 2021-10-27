def stringy(num)
  ans = ''
  num.times do |index|
    digit = index.even? ? '1' : '0'
    ans << digit
  end
  ans
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'