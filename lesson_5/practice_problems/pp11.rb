arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

mult_of3 = arr.map do |subarr|
  subarr.select { |x| (x % 3).zero? }
end
p mult_of3
