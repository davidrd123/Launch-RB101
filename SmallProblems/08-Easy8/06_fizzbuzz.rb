# input: two integers (starting number, ending number)
# output: see rules

# rules: 
#   Expicit Requirements
#   - For each number between start & end
#     - Print "FizzBuzz" if divisible by 3 & 5
#     - Print "Buzz" if divisible by 5
#     - Print "Fizz" if divisible by 3
#     - Otherwise, print the number

def fizzbuzz(start, stop)
  result = []
  (start..stop).each do |num|
    if (num % 3).zero? && (num % 5).zero?
      result << 'FizzBuzz'
    elsif (num % 5).zero?
      result << 'Buzz'
    elsif (num % 3).zero?
      result << 'Fizz'
    else
      result << num
    end
  end
  puts result.join(', ')
end






fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz