def factors(number)
  factors = []
  number.downto(1) do |divisor|
    factors << number / divisor if (number % divisor).zero?
  end
  factors
end

p factors(10)
p factors(0)
p factors(-1)