arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]



ans = arr.sort do |a, b|
  odd_a = a.filter(&:odd?)
  odd_b = b.filter(&:odd?)
  odd_a <=> odd_b
end

p ans


ans2 = arr.sort_by { |subarr| subarr.filter(&:odd?) }
p ans2