flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)


index1 = flintstones.find_index { |elem| elem[0..1] == 'Be' }

index2 = flintstones.index { |name| name[0, 2] == 'Be' }

p index1, index2