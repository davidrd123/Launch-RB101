# input: string
# output: string with uppercase to lowercase, and vice-versa

# rules:#
#   Explicit Requirements
#   - All other characters unchanged

# ALgorithm
# - Split string into word array
# - Map on each word
#   - SPlit word into 

def swapcase1(string)
  string.split.map(&:swapcase).join(' ')
end

def swapcase(string)
  string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end.join('')
end



p swapcase('CamelCase')         #== 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') #== 'tONIGHT ON xyz-tv'