=begin
Write a method that takes a string, and then returns a hash that contains 3 entries: 
    one represents the percentage of characters in the string that are lowercase letters, 
    one the percentage of characters that are uppercase letters, and 
    one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.


# PROBLEM:
- input: string
- output: hash with three entries
    1. percentage of chars in input string that are lowercase letters
    2. percentage of chars in input string that are uppercase letters
    3. percentage of chars that are neither.

# Rules/Requirements
- Assume that the string will always contain at least one character 
- Any character that is non-alphabetical counts as neither

# Questions:
- Do we count blank characters? 
    YES, as neither.


# Examples:
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# DATA STRUCTURES
- Input: String
- Output: Hash

- Counter: Hash for three categories, increment category by one for each character
    - Start with Hash that has default value of 0

# ALGORITHM
- Build up count of each class (Lower / Upper / Neither)
  - Set count hash with default value to 0
  - Iterate over each character in turn
    - Detect which class it belongs to and increment that count
- Divide count by total characters * 100 to get percentage 
  - Use map + to_h


=end

def calc_count(string)
  counts = {uppercase: 0, lowercase: 0, neither: 0}
  string.chars.each do |c|
    case c
    when /[A-Z]/
      counts[:uppercase] += 1
    when /[a-z]/
      counts[:lowercase] += 1
    else
      counts[:neither] += 1
    end
  end
  counts
end

def convert_to_percent(count_hash, num_chars)
  count_hash.map { |k, count| [k, ((count / num_chars.to_f) * 100).round(1)] }.to_h
end

def letter_percentages(string)
  num_chars = string.length
  counts = calc_count(string)
  convert_to_percent(counts, num_chars)
end



p letter_percentages('abCdef 123')  #== { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef')    #== { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123')         #== { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }