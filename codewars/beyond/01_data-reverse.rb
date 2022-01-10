=begin

# PROBLEM:
A stream of data is received and needs to be reversed.

Each segment is 8 bits long, meaning the order of these segments needs to be reversed, 
for example:

11111111  00000000  00001111  10101010
 (byte1)   (byte2)   (byte3)   (byte4)
should become:

10101010  00001111  00000000  11111111
 (byte4)   (byte3)   (byte2)   (byte1)
The total number of bits will always be a multiple of 8.

The data is given in an array as such:

[1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,1,0,1,0,1,0]

- input: array of integers
- output: array of integers
   
# Rules/Requirements
- Data grouped in bits of 8
- Reverse order of groups

# Questions:



# Examples:


# DATA STRUCTURES


# ALGORITHM
- Group sequences of 8 numbers together in a nested array
- Reverse the order of the array
- Flatten nested array and return

=end

def data_reverse(data)
  data.each_slice(8).to_a.reverse.flatten
end

p data_reverse([1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,1,0,1,0,1,0])
