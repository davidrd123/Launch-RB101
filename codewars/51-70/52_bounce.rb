=begin

A child is playing with a ball on the nth floor of a tall building. The height 
of this floor, h, is known.

He drops the ball out of the window. The ball bounces (for example), to two-thirds 
of its height (a bounce of 0.66).

His mother looks out of a window 1.5 meters from the ground.

How many times will the mother see the ball pass in front of her window (including 
when it's falling and bouncing?

Three conditions must be met for a valid experiment:
Float parameter "h" in meters must be greater than 0
Float parameter "bounce" must be greater than 0 and less than 1
Float parameter "window" must be less than h.
If all three conditions above are fulfilled, return a positive integer, otherwise return -1.

Note:
The ball can only be seen if the height of the rebounding ball is strictly greater 
than the window parameter.


# PROBLEM:
- input: h -> float, bounce -> float, windows -> float
- output: integer
   
# Rules/Requirements
- Valid setup:
  - h > 0
  - 0 < bounce < 1
  - window < h
- Return -1 if not a valid setup
- On each bounce, the ball goes back up to bounce * previous height
- Series of heights:
  h, h*b, h*b^2, ... 
  - Will see the ball once on the first pass, then twice for every bounce above
    window.
  

# Questions:
- If the ball bounces back up to exactly window, how many times 
  does that count as? -> 0!


# Examples:
p bouncingBall(3, 0.66, 1.5) == 3
p bouncingBall(30, 0.66, 1.5) == 15
p bouncingBall(30, 0.75, 1.5) == 21
p bouncingBall(30, 0.4, 10) == 3
p bouncingBall(40, 1, 10) == -1
p bouncingBall(-5, 0.66, 1.5) == -1
p bouncingBall(1, 0.66, 0.66) == 1
p bouncingBall(1, 0.66, 1) == -1



# DATA STRUCTURES


# ALGORITHM
- If not valid setup, return -1
- Construct series from h, h*b ... h*b^n, where h*b^(n+1) is the first term < window.
  - 1, b, ... b^n, where b^n < window/h and b^(n+1) >
OR
- Find num_bounces up to window, then return that + 1

find_num_passes(h, bounce, window)
- height = h
- num_passes = 1
- Loop:
  - height = height * bounce
  - If height <= window 
    - Return num_passes
  - Else
    - num_passes += 2
    - Return num_passes

=end

def find_num_passes(h, bounce, window)
  height = h
  num_passes = 1
  loop do
    height *= bounce
    if height <= window
      return num_passes
    else
      num_passes += 2
    end
  end
end

def bouncingBall(h, bounce, window)
  return -1 if h <= 0 || bounce <= 0 || bounce >= 1 || window >= h
  return find_num_passes(h, bounce, window)
end


p bouncingBall(3, 0.66, 1.5)    == 3
p bouncingBall(30, 0.66, 1.5)   == 15
p bouncingBall(30, 0.75, 1.5)   == 21
p bouncingBall(30, 0.4, 10)     == 3
p bouncingBall(40, 1, 10)       == -1
p bouncingBall(-5, 0.66, 1.5)   == -1
p bouncingBall(1, 0.66, 0.66)   == 1
p bouncingBall(1, 0.66, 1)      == -1