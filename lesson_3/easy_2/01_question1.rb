ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# Is Spot present

if ages.assoc('Spot')
  puts 'yes'
else
  puts 'no'
end

if ages.key?('Spot')
  puts 'yes'
else
  puts 'no'
end

p (ages.assoc('Herman')) # ["Herman", 32]                KEY + VALUE
p (ages.rassoc(32))      # ["Herman", 32]                KEY + VALUE

p (ages.fetch('Lily'))   # 30                            VALUE

p (ages.key?('Lily')) # true                             BOOLEAN - (KEY present)
p (ages.member?('Lily')) # true                          BOOLEAN - (KEY present)
p (ages.include?('Lily')) # true                         BOOLEAN - (KEY present)

p (ages.any? { |k, _| k == 'Grandpa' })     # BOOLEAN - (KEY present)

p (ages.select { |k, _| k == 'Grandpa' })   # {"Grandpa" => 402}  HASH element
p (ages.keep_if { |k, _| k == 'Grandpa' })  # {"Grandpa" => 402}  HASH element