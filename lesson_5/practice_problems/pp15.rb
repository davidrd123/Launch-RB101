arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

ans = arr.map do |hsh|
  hsh.filter do |_, v|
    v.all?(&:even?)
  end
end

ans2 = arr.filter do |hsh|
  hsh.all? do |_, v|
    v.all?(&:even?)
  end
end

p ans2