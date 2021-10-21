vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(vehicles)
  vehicles.each_with_object(Hash.new(0)) do |vehicle, hash| 
    hash[vehicle] += 1
  end
end

p count_occurrences(vehicles)