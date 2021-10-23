ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

under100a = ages.reject { |_, v| v >= 100 }
under100b = ages.keep_if { |_, v| v < 100 }

p under100a
p under100b

