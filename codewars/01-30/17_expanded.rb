=begin

You will be given a number and you will need to return it as a string in 
Expanded Form. For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.


# PROBLEM:
- input: integer
- output: string
   
# Rules/Requirements
- Input number is positive integer
- Output string is nonzero digits of integer converted to number with ' + ' in
  between

# Questions:



# Examples:
p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'

# DATA STRUCTURES
- array to hold expanded numbers

# ALGORITHM
- Initialize expanded number array to []
- Take digits in reverse order and keep track of exponent
e.g., 104 -> [4, 0, 1] where index maps to exponent
- To get digits:
  - Convert number to string, take chars of that, reverse and map to_i
- Iterate over the elements of this array w/ index
  - If the element is non-zero, multiply it by 10^index and append
    it to the result array
  - Reverse the result array back to largest number first
- Join the result array with ' + ' between the numbers, return this

=end

def expanded_form(num)
  result_arr = []
  digits = num.to_s.chars.reverse.map(&:to_i)
  digits.each.with_index do |digit, index|
    result_arr << digit * 10**index unless digit.zero?
  end
  result_arr.reverse!
  result_arr.join(' + ')
end


p expanded_form(12)     == '10 + 2'
p expanded_form(42)     == '40 + 2'
p expanded_form(104)    == '100 + 4'
p expanded_form(70_304) == '70000 + 300 + 4'