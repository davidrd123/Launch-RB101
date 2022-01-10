=begin

Reverse or rotate?
The input is a string str of digits. Cut the string into chunks (a chunk here 
is a substring of the initial string) of size sz (ignore the last chunk if its 
size is less than sz).

If a chunk represents an integer such as the sum of the cubes of its digits is 
divisible by 2, reverse that chunk; otherwise rotate it to the left by one position. 

Put together these modified chunks and return the result as a string.

If

sz is <= 0 or if str is empty return ""
sz is greater (>) than the length of str it is impossible to take a chunk of size sz hence return "".


# PROBLEM:
- input: 
- output: 
   
# Rules/Requirements
- Cut the input string str into chunks of size sz, ignoring the last if its size <= sz
- If the chunk ~ integer s.t. sum of cubes of digits is even, reverse the chunk
  - Else rotate to left by one position
- Put together the modified chunks & return as a string

# Questions:



# Examples:
p revrot("1234", 0) == ""
p revrot("", 0) == ""
p revrot("1234", 5) == ""
p revrot("733049910872815764", 5) == "330479108928157"
p revrot("123456987654", 6) == "234561876549"
p revrot("123456987653", 6) == "234561356789"
p revrot("66443875", 4) == "44668753"
p revrot("66443875", 8) == "64438756"
p revrot("664438769", 8) == "67834466"
p revrot("123456779", 8) == "23456771"
p revrot("", 8) == ""
p revrot("123456779", 0) == ""


# DATA STRUCTURES


# ALGORITHM
revrot(string, sz)
- Return "" if sz <= 0 or sz > string.length
- Init return_str = ''
- Split input string into array of chunks of size sz, drop last chunk if size < sz
- For each chunk:
  - If sum of cubes of digits is even
    - Reverse the chunk and append to return_str
  - Else
    - Rotate to left by one position and append to return str
- Return return_str

split_to_chunks(str)
- Splits str to array of chunks of size sz, drop last chunk if size < sz
- Join chunks to strings

reverse_condition?(str)
- Return true if sum of cubes of digits is even

rotate(str)
- Assuming 'rotate to left' means: '123' => '231'
  str_chars = str.chars
  str_chars << str_chars.shift
  str_ch
=end

def rotate(str)
  str_chars = str.chars
  str_chars << str_chars.shift
  str_chars.join
end

def reverse_condition?(str)
  str.to_i.digits.map { |x| x**3 }.sum.even?
end

def split_to_chunks(str, sz)
  str.chars.each_slice(sz).to_a.filter { |x| x.length == sz }.map(&:join)
end

def revrot(str, sz)
  return_str = ''
  return return_str if sz <= 0 || sz > str.length
  
  chunk_arr = split_to_chunks(str, sz)
  chunk_arr.each do |chunk|
    if reverse_condition?(chunk)
      return_str << chunk.reverse
    else
      return_str << rotate(chunk)
    end
  end
  return_str
end

p revrot("1234", 0)               == ""
p revrot("", 0)                   == ""
p revrot("1234", 5)               == ""
p revrot("733049910872815764", 5) == "330479108928157"
p revrot("123456987654", 6)       == "234561876549"
p revrot("123456987653", 6)       == "234561356789"
p revrot("66443875", 4)           == "44668753"
p revrot("66443875", 8)           == "64438756"
p revrot("664438769", 8)          == "67834466"
p revrot("123456779", 8)          == "23456771"
p revrot("", 8)                   == ""
p revrot("123456779", 0)          == ""



# p rotate('123') # '231'
# p reverse_condition('11') # 1 + 1 = 2 -> true
# p reverse_condition('12') # 1 + 4 = 5 -> false

# p split_to_chunks('1234', 1) # ['1', '2', '3', '4']
# p split_to_chunks("1234", 2) # ['12', '34']
# p split_to_chunks('1234', 3) # ['123' ]
# p split_to_chunks('1234', 4) # ['1234']