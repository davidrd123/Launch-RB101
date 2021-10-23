ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }


sum_of_ages1 = ages.reduce(0) { |acc, (_, v)| acc + v }
sum_of_ages2 = ages.values.inject(:+)

sum_of_ages3 = 0
ages.each { |_, age| sum_of_ages3 += age }

p sum_of_ages1
p sum_of_ages2
p sum_of_ages3