# input: array and hash
#         - array has 2+ elements that when combined form the person's name
#         - hash has two keys, :title & :occupation
# output: greeting that uses full name + title + occupation

def greetings(name_arr, hash)
  "Hello, #{name_arr.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end


p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.