def joinor(arr, sep=', ', conjunction='or')
  return '' if arr.empty?
  
  all_but_last = arr[0..-2].join(sep)
  last = arr.last
  if all_but_last.length == 1
    all_but_last + ' ' + conjunction + ' ' + last.to_s
  else
    all_but_last + sep + conjunction + ' ' + last.to_s
  end
end



p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
p joinor([])