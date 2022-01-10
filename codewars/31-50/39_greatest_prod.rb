=begin

Complete the greatestProduct method so that it'll find the greatest product 
of five consecutive digits in the given string of digits.

For example:

greatestProduct("123834539327238239583") // should return 3240
The input string always has more than five digits.

# PROBLEM:
- input: string
- output: integer
   
# Rules/Requirements
- Return maximum product of five consecutive integers of the input number
- Input string always has more than 5 digits

# Questions:



# Examples:
p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0


# DATA STRUCTURES


# ALGORITHM
gen_digit_arr(num)
  - Produce array of all 5 consecutive digits from input string of digits
map_to_prod(arr)
  - Map arrays of int chars to product of the digits
greatest_product(num)
  - Return max number

=end

def gen_digit_arr(num)
  num.chars.each_cons(5).to_a
end

def map_to_prod(num_arr)
  num_arr.map do |digit_arr|
    digit_arr.map {|digit| digit.to_i }.reduce(&:*)
  end
end 

def greatest_product(num)
  map_to_prod(gen_digit_arr(num)).max
end

p gen_digit_arr("123456789")
p map_to_prod(gen_digit_arr("123456789"))

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0