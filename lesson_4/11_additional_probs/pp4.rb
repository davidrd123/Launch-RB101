ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

min_age_person = ages.min_by { |_, v| v }
p min_age_person

p ages.values.min
