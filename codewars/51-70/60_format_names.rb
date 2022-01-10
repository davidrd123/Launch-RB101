=begin

Given: an array containing hashes of names

Return: a string formatted as a list of names separated by commas except for the 
last two names, which should be separated by an ampersand.


# PROBLEM:
- input: array containing hashes of names (:name => "Person Name")
- output: string consisting of the names separated by commas except the  
      last two names which are separated by an ampersand
   
# Rules/Requirements
- Keep the ordering of the list

# Questions:



# Examples:
list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

list([ {name: 'Bart'} ])
# returns 'Bart'

list([])
# returns ''


# DATA STRUCTURES


# ALGORITHM
- Initialize result = ''
- Transform the hash to an array of names
- If array is length 0, return result
- If array is length 1, return the first element of the array

- Slice off last two names and join with ampersand, push to result
  - Assign slice of last two names to variable & join that with ampersand,
    push to result
  - Reassign the array of names to the result of slicing from the first
    up to two from the end
- Until array is empty:
  - Pop off the last name of the array
  - Append the name plus space and comma to front of string
- Return result

=end

def list(hashes_of_names_array)
  result = '' 
  name_array = hashes_of_names_array.map { |x| x.values.first }
  case name_array.length
  when 0
    return result
  when 1
    return name_array.first
  else
    last_two_names = name_array.slice(-2, 2)
    result << last_two_names.join(' & ')
    name_array = name_array[0...-2]
  end
  until name_array.empty?
    last_name = name_array.pop
    result = last_name + ', ' + result
  end
  result
end


p list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
p list([ {name: 'Bart'}, {name: 'Lisa'} ])
p list([ {name: 'Bart'} ])
p list([])