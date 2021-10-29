# input: integer (angle in degrees)
# output: string (representing angle in degrees, minutes, and seconds)

# rules:

#   DEGREE CONVERSION
# - Keep the whole units of degrees
# - Multiply the decimal portion by 60
#   - The whole number becomes the minutes
# - Multiply the remaining decimal by 60
#   - That part is the seconds

DEGREE = "\xC2\xB0"

def dms(angle)
  degrees, decimal = angle.divmod(1)
  minutes, decimal = (decimal * 60).divmod(1)
  seconds = (decimal * 60).round(2)
  if seconds == 60
    seconds = 0
    minutes += 1
  end
  
  format("%02d#{DEGREE}%02d'%02d\"", degrees, minutes, seconds)
end



puts dms(30)         #== %(30°00'00")
puts dms(76.73)      #== %(76°43'48")
puts dms(254.6)      #== %(254°36'00")
puts dms(93.034773)  #== %(93°02'05")
puts dms(0)          #== %(0°00'00")
puts dms(360)        #== %(360°00'00") || dms(360) == %(0°00'00")