=begin

Given a certain integer n, n > 0 and a number of partitions, k, k > 0; 
we want to know the partition which has the maximum or minimum product of its terms.

The function find_spec_partition() , will receive three arguments, n, k, and a 
command: 'max' or 'min'

The function should output the partition that has maximum or minimum value product 
(it depends on the given command) as an array with its terms in decreasing order.

Let's see some cases (Python and Ruby)

find_spec_partition(10, 4, 'max') == [3, 3, 2, 2]
find_spec_partition(10, 4, 'min') == [7, 1, 1, 1]

# PROBLEM:
- input: n, k, min_or_max (integer, integer, string)
- output: array of integers of length k
   
# Rules/Requirements
- A partition of size k is an array of integers of length k that adds up to n
- Return the min or max partition depending on the last arguement
- Return the partition sorted in decreasing order

# Questions:


# Examples:


# DATA STRUCTURES


# ALGORITHM
- Generate all partitions of n of size k
  - Generate all the partitions starting with n - (k - 1) 

- Select the min / max based on 3rd parameter
- Sort the partition in decreasing order and return

n = 10, k = 5  (n - (k - 1))
     6 1 1 1 1 : 

combine(num, array_of_partitions)
- Returns array of partitions

- Returns array of arrays of length k that are possible partitions
gen_partitions(n, k)    
  - For the first number:
    (n - k + 1)).downto(1) do |i|
      return [i] + gen_partition(i, k - 1)
    
    gen_partitions(10, 4)
      result = []
      7.downto(1) do |i|
        combine(7, gen_partitions(3, 3))
        gen_partitions(3, 3)
        result = []
        1.downto(1) do |i|
          combine(2, gen_partitions(2, 2))
          gen_partitions(2, 2)
          result = []
          1.downto(1) do |i|
            combine(1, gen_partitions(1, 1))
            combine(1, [1]) 
            [1 1]
=end
require 'pry'

def combine(num, partitions)
  partitions.map { |partition| ([num] + partition).flatten}
end

def accumulate(arr, partitions)
  arr + partitions
end

def gen_partitions(n, k)
  return [[n]] if k == 1

  result = []
  (n - k + 1).downto(1) do |i|
    result += combine(i, gen_partitions(n - i, k - 1))
  end
  result
end



def find_spec_partition(n, k, by)
  partitions = gen_partitions(n, k).uniq.sort {|a, b| b <=> a}
  return partitions.min_by { |partition| partition.reduce(&:*) } if by == "min"

  partitions.max_by { |partition| partition.reduce(&:*) } if by == "max"
end

binding.pry

p find_spec_partition(10, 4, 'max') #== [3, 3, 2, 2]
p find_spec_partition(10, 4, 'min') #== [7, 1, 1, 1]