flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# p ( flintstones.group_by { |k,v| v.even? } )

p ( flintstones.each_with_object([]) { |(k,v), acc| acc << v } )

p ( flintstones.filter { |k,v| k == 'Barney' }.to_a.flatten )

p flintstones.assoc("Barney")