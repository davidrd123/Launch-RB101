=begin

Given a string of integers, return the number of odd-numbered substrings that 
can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, 
a total of 7 numbers.


# PROBLEM:
- input: string of integers
- output: integer 
   
# Rules/Requirements
- Return the number of odd-numbered substrings that can be formed from the
  input 
- If same digit occurs twice, can use each

# Questions:



# Examples:
p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28


# DATA STRUCTURES
input: string of integers
  array: substrings that end in an odd integer

output: integer

# ALGORITHM
- Generate all substrings of input string -> array
- Filter the substrings to include only ones that end in an odd integer
- Return size of filtered array

filter_odd?(array)
- Filter elements of array: keep ones that converted to integer are odd

input: string that is an integer
output: array of substrings
substrings(string):
- Generate all the substrings that start with first character -> result array
- Concatenate result array with substrings(string[1..])
- Return result array
=end

def substrings(string)
  result = []
  return result if string.empty? 

  (0..string.length-1).each do |i|
    result << string[0..i]
  end
  result + substrings(string[1..])
end

def filter_odd(array)
  array.filter {|x| x.to_i.odd? }
end

def solve(string)
  filter_odd(substrings(string)).size
end

# p filter_odd(substrings("1341"))


p solve("1341")     #== 7
p solve("1357")     #== 10
p solve("13471")    #== 12
p solve("134721")   #== 13
p solve("1347231")  #== 20
p solve("13472315") #== 28
