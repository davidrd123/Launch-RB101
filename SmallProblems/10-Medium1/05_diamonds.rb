# input: integer
# output: print diamond to stdout in an n x n grid

# rules:
# - n is odd

# GenLine(curr_line, total_size)
# line 1 is always 1
# line 2 is always 3
# ...

# use center(num) to center the star
# generate each line give line num & total lines
# before midpoint: 
#  - num stars = 2*i + 1
# after midpoint:
#  - num stars = 2*(n-i) + 1

# Hollow diamond:
# Each line:
# - Base case (ends) -> return centered single star
# - Line i: 2*i - 1 spaces, single star on either end

def gen_line(dist_to_midpoint, n)
  num_stars = n - 2 * dist_to_midpoint
  ('*' * num_stars).center(n)
end

def gen_hollow_line(dist_to_midpoint, n)
  return '*'.center(n) if dist_to_midpoint == n / 2
  num_spaces = (n - 2) - 2 * dist_to_midpoint
  ('*' + ' ' * num_spaces + '*').center(n)
end

def diamond(num)
  midpoint = num / 2
  0.upto(num - 1) do |i|
    puts gen_line((midpoint - i).abs, num)
  end
end

def hollow_diamond(num)
  midpoint = num / 2
  0.upto(num - 1) do |i|
    puts gen_hollow_line((midpoint - i).abs, num)
  end
end

hollow_diamond(1)
hollow_diamond(3)
hollow_diamond(5)