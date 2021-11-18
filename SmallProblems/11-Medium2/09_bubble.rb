

=begin

# PROBLEM:
- input: 
- output: 
   
# Rules/Requirements


# Questions:



# Examples:


# DATA STRUCTURES


# ALGORITHM
Scan through array, comparing pairs
  Swap a pair if out of order (second greater than first)
Repeat until full pass w/o swaps

=end

def almost_bubble_sort!(arr)
  loop do
    idx = arr.each_cons(2).find_index { |a, b| a > b }
    break if idx.nil?
    arr[idx, 2] = arr[idx, 2].reverse
  end
end

def bubble_sort!(arr)
  loop do
    made_swap = false
    (0...arr.length - 1).each do |idx|
      if arr[idx] > arr[idx + 1]
        arr[idx, 2] = arr[idx, 2].reverse
        made_swap = true
      end
    end
    break unless made_swap
  end
end

array = [6, 2, 7, 1, 4]
bubble_sort!(array)

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)