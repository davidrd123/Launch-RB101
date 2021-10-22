def prompt(message)
  puts "=> #{message}"
end

def valid_number?(number)
  number.to_i != 0
end

prompt("Welcome to the Mortage Calculator.")

# Prompt for loan amount
loan_amount = nil
loop do
  puts "What is the loan amount?"
  loan_amount = gets.chomp
  
  if valid_number?(loan_amount)
    break
  else
    prompt("That doens't seem to be a valid number")
  end
end

# Prompt for APR
apr = nil
loop do
  puts "What is the APR (in %)"
  apr = gets.chomp

  if valid_number?(apr)
    break
  else
    prompt("That doens't seem to be a valid number")
  end
end

# Prompt for loan duration
loan_duration = nil
loop do
  puts "What is the loan duration (in months)"
  loan_duration = gets.chomp

  if valid_number?(loan_duration)
    break
  else
    prompt("That doens't seem to be a valid number")
  end
end

# Convert user input to numbers
loan_amount   = loan_amount.to_f
loan_duration = loan_duration.to_f
monthly_rate  = (apr.to_f / 100) / 12


# Calculate monthly payment
monthly_payment = loan_amount * monthly_rate
monthly_payment /= (1 - ((1 + monthly_rate)**(-loan_duration)))

puts "Your monthly payment is %.2f" % monthly_payment