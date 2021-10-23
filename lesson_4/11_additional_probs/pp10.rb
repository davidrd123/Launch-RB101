munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

x = munsters.group_by do |k, v|
  case v['age']
  when (0..17) then "kid"
  when (18..64) then "adult"
  else "senior"
  end
end

def age_to_label(age) 
  case age
  when (0..17) then "kid"
  when (18..64) then "adult"
  else "senior"
  end
end


h1 = munsters.map do |k, v|
  v['age_group'] = age_to_label(v['age'])
  [k, v]
end.to_h

h2 = munsters.each do |k, v|
  v['age_group'] = age_to_label(['age'])
end

p h1
p h2