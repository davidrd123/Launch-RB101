# input: string
# output: string with words for numbers replaced with numeric digits

# rules: 
#   Explicit requirements:
#   - Return same string mutated

# Algorithm:
# Iterate over Hash taking 'one' => 1, etc.
#   Gsub! each key to value

NUMBERS = {
  'zero'  => '0',
  'one'   => '1',
  'two'   => '2',
  'three' => '3',
  'four'  => '4',
  'five'  => '5',
  'six'   => '6',
  'seven' => '7',
  'eight' => '8',
  'nine'  => '9'
}

def word_to_digit(string)
  NUMBERS.keys.each do |num_str|
    string.gsub!(/\b#{num_str}\b/, NUMBERS[num_str])
  end
  string
end




p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'