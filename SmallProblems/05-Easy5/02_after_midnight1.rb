# input: signed integer
# output: string formatted as 24-hour time (hh:mm)

# rules:
#   Explicit Requirements
#     - Input number is number of minutes before/after midnight
#     - May not use `Date` or `Time` classes

# Algorithm:
#   Solve first for input in positive 24 hr range (< 1440)
#     - hours, minutes = time_in.divmod(60)
#   Now for postive > 1440:
#     - hours = hours % 24
#   Now surprisingly, for negative numbers we can use this logic unchanged
#     - DONE
#   Arrive at 0 <= h < 24, 0 <= m < 60
#   Output: sprintf("%02d:02d", h, m)
require 'pry'


MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def time_of_day(num_minutes)
  hours, minutes = num_minutes.divmod(MINUTES_PER_HOUR)
  hours = hours % HOURS_PER_DAY
  format('%02d:%02d', hours, minutes)
end

p time_of_day(0)      #== "00:00"
p time_of_day(-3)     #== "23:57"
p time_of_day(35)     #== "00:35"
p time_of_day(-1437)  #== "00:03"
p time_of_day(3000)   #== "02:00"
p time_of_day(800)    #== "13:20"
p time_of_day(-4231)  #== "01:29"

# binding.pry