# after_midnight
# input: string
# output: number

# rules:
#   Explicit Requirements
#     - Return the number of minutes after midnight
#     - Maps to a value in the range [0, 1439]
# Algorithm:
#   - Split string, convert each half to numeric value
#     - Store in hours, minutes variables
#   - Return hours * 60 + minutes
require 'pry'

MIN_PER_HOUR = 60
HOURS_PER_DAY = 24
MIN_PER_DAY = MIN_PER_HOUR * HOURS_PER_DAY

def extract_time(time_str)
  hrs, min = time_str.split(':').map(&:to_i)
end

def after_midnight(time_str)
  hrs, min = extract_time(time_str)
  (hrs % HOURS_PER_DAY) * MIN_PER_HOUR + min
end

def before_midnight(time_str)
  (MIN_PER_DAY - after_midnight(time_str)) % MIN_PER_DAY
end

# before_midnight
# algorithm:
#   - starting with hours, minutes
#   - how much time from that clock time to midnight?
#     - 24:00 - hh:mm, works if you can borrow 
#     - convert to minutes:
#      - 24*60 - h * 60 + m
#     - 
#   - now return new hours * 60 + minutes





p after_midnight('00:00')   #== 0
p before_midnight('00:00')  #== 0
p after_midnight('12:34')   #== 754
p before_midnight('12:34')  #== 686
p after_midnight('24:00')   #== 0
p before_midnight('24:00')  #== 0

binding.pry