=begin

# You have to create a method that takes a positive integer number and returns the
next bigger number formed by the same digits

# PROBLEM:
- input: integer
- output: ineg
   
# Rules/Requirements


# Questions:



# Examples:
12   => 21
513  => 531
2017 => 2071
If no bigger number can be composed, return -1
9   => -1
111 => -1
531 => -1

# DATA STRUCTURES


# ALGORITHM
- Form all the integers that can be made by permuting the digits
  - permutation(number_of_digits)
- Sort that list and find the next biggest number in the list
  - Return that number if not nil
  - Otherwise return -1


=end

def next_bigger_num(num)
  num_str = num.to_s
  permutations = num_str.chars.permutation(num_str.length).to_a.map(&:join).map(&:to_i).sort
  next_biggest = permutations.find {|next_biggest| next_biggest > num }
  next_biggest.nil? ? -1 : next_biggest
end

# p next_bigger_num(123)
p next_bigger_num(12)     # 21
p next_bigger_num(123)    # 132
p next_bigger_num(2017)   # 2071
p next_bigger_num(9) # -1
p next_bigger_num(111) # -1
p next_bigger_num(531) # -1
