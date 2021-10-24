arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

sorted_arr = []
arr.each do |sub_arr|
  sorted_arr << sub_arr.sort { |x, y| y <=> x }
end

new_arr = arr.map do |sub_arr|
  sub_arr.sort { |a, b| b <=> a }
end

p sorted_arr
p new_arr 