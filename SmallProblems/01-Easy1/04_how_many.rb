vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(vehicles)
  counter = Hash.new(0)
  vehicles.each { |vehicle| counter[vehicle] += 1 }
  counter.each { |vehicle, count| puts "#{vehicle} => #{count}"}
end

count_occurrences(vehicles)