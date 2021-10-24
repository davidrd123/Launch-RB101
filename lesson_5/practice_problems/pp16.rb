def gen_hex_char()
  uuid = ''
  template = [8, 4, 4, 4, 12]
  chars = %w[1 2 3 4 5 6 7 8 9 a b c d e f]
  template.each_with_index do |num, index|
    num.times do
      uuid << chars.sample
    end
    uuid << '-' unless index >= template.size - 1
  end
  uuid
end


puts gen_hex_char