=begin

You probably know the "like" system from Facebook and other pages. People can 
"like" blog posts, pictures or other items. We want to create the text that 
should be displayed next to such an item.

Implement a function likes :: [String] -> String, which must take in input array, 
containing the names of people who like an item. It must return the display text 
as shown in the examples:


# PROBLEM:
- input: string (names of people)
- output: string
   
# Rules/Requirements
- Join the names in the string following: (then + " like this")
  - If no names, -> "no one"
  - One person -> "Person"
  - Two people -> "Person1 and Person2"
  - Three people -> "Person1, Person2 and Person3" 
  - More than three -> "Person1, Person2 and [n-2] others", where n is total number of ppl
# Questions:



# Examples:
likes [] // must be "no one likes this"
likes ["Peter"] // must be "Peter likes this"
likes ["Jacob", "Alex"] // must be "Jacob and Alex like this"
likes ["Max", "John", "Mark"] // must be "Max, John and Mark like this"
likes ["Alex", "Jacob", "Mark", "Max"] // must be "Alex, Jacob and 2 others like this"


# DATA STRUCTURES


# ALGORITHM
- input: name_list
- If the input array is empty, people -> "no one"
- Switch on the length of the input array:
  1: people -> name_list.first
  2: people -> name_list.join(" and ")
  3: people -> name_list[0] + ", " + name_list[1, 2].join(' and ')
  4: slice the first two people, join with comma
    + name_list.length - 2 + " others "
- Return people + " like this"
=end

def likes(name_list)
  case name_list.length
  when 0
    people = "no one likes this"
  when 1
    people = name_list.first + " likes this"
  when 2
    people = name_list.join(" and ") + "like this"
  when 3
    people = name_list[0] + ", " + name_list[1, 2].join(' and ') + "like this"
  else
    people = "#{name_list[0, 2].join(', ')} and #{name_list.length - 2} others like this"
  end
  people
end

p likes([]) #// must be "no one likes this"
p likes(["Peter"]) # // must be "Peter likes this"
p likes(["Jacob", "Alex"]) # // must be "Jacob and Alex like this"
p likes(["Max", "John", "Mark"]) # // must be "Max, John and Mark like this"
p likes(["Alex", "Jacob", "Mark", "Max"]) # // must be "Alex, Jacob and 2 others like this"