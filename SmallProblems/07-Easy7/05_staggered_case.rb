# input: string
# output: string with every other character is capitalized

# rules
#   Explicit Requirements
#   - Characters that are not letters should not be changed, but
#     should count as characters when switching between upper & lowercase

# Algorithm
# - Iterate over string split into array of chars with index
#   - Even indices are uppercased
#   - Odd indicies are downcased


def staggered_case(string)
  string.chars.map.with_index do |char, idx|
    idx.even? ? char.upcase : char.downcase
  end.join('')
end


p staggered_case('I Love Launch School!')     == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS')                  == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'