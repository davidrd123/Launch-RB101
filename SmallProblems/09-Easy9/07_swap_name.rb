# input: string "fname lname"
# output: "lname, fname"

# Alg

def swap_name(string)
  names = string.split
  "#{names[1]}, #{names[0]}"
end



p swap_name('Joe Roberts') == 'Roberts, Joe'