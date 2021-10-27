def valid_integer?(num_str)
  is_int = Integer(num_str) rescue false
  num_str.to_i.positive? if is_int
end

def prompt_for_integer
  num_str = nil
  loop do
    puts '>> Please enter an integer greater than 0:'
    num_str = gets.chomp
    break if valid_integer?(num_str)

    puts '>> Invalid input. Please try again.'
  end
  num_str.to_i
end

def prompt_for_operation
  operation = nil
  loop do
    puts ">> Enter 's' to compute the sum, 'p' to compute the product"
    operation = gets.chomp.downcase
    break if %w[s p].include? operation

    puts '>> Invalid input. Please try again.'
  end
  operation
end

def gen_result_string(num, op)
  case op
  when 's'
    total = (1..num).reduce(0, :+)
    computation = 'sum'
  when 'p'
    total = (1..num).reduce(1, :*)
    computation = 'product'
  end

  "The #{computation} of the integers between 1 and #{num} is #{total}."
end

number    = prompt_for_integer
operation = prompt_for_operation
puts gen_result_string(number, operation)