# input: string
# output: string with every other character is capitalized

# rules
#   Explicit Requirements
#   - Characters that are not letters should not be changed, but
#     DO NOT count as characters when switching between upper & lowercase

# Algorithm
# - Iterate over string split into array of chars 
# - Use boolean that flips on alpha chars, result string that
#   we append to.
#   - For alpha chars:
#     - Apply upcase if upcase is true
#       - Append char to result
#       - Flip upcase to false
#     - Apply downcase if upcase if false
#       - Append char to result
#       - Flip upcase to true
#   - For non-alpha chars:
#     - Append char to result


def staggered_case(string)
  upcase = true
  result = ''
  string.chars.map do |char|
    if char =~ /[a-z]/i
      if upcase
        result << char.upcase
      else
        result << char.downcase
      end
      upcase = !upcase
    else
      result << char
    end
  end
  result
end


p staggered_case('I Love Launch School!')     #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS')                  #== 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 nUmBeRs'