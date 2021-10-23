flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

h1 = flintstones.each_with_object({}).with_index do |(elem, acc), i|
  acc[elem] = i
end

h2 = {}
flintstones.each.with_index do |elem, i|
  h2[elem] = i
end

p h1
p h2