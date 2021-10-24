arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]


new_arr = arr.map do |hsh|
  hsh.each do |k, v|
    hsh[k] += 1 # can mutate a hash while iterating as long as keys are not touched
  end
end

p new_arr

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr2 = arr.each_with_object([]) do |hsh, acc|
  incr_hash = {}
  hsh.each do |k, v|
    incr_hash[k] = v + 1
  end
  acc << incr_hash
end

p new_arr2
