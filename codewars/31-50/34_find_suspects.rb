=begin

Sherlock has to find suspects on his latest case. He will use your method, 
dear Watson. Suspect in this case is a person which has something not allowed 
in his/her pockets.

Allowed items are defined by array of numbers.

Pockets contents are defined by map entries where key is a person and value 
is one or few things represented by an array of numbers (can be nil or empty 
array if empty), example:

pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
} 

Write amethod which helps Sherlock to find suspects. If no suspect is found or 
there are no pockets (pockets == nil), the method should return nil.


# PROBLEM:
- input: hash mapping person to items in their pockets
         array of allowed items
- output: array of people with items not allowed
          OR nil if no people matched
   
# Rules/Requirements
- pockets is a hash mapping people to the contents of their pockets
  - Items are represented by integers
- second param is an array of allowed items
- If pockets is nil or no suspect is found, return nil

# Questions:



# Examples:
p find_suspects(pockets, [1, 2]) == [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2]) == nil
p find_suspects(pockets, []) == [:bob, :tom, :jane]
p find_suspects(pockets, [7]) == [:bob, :tom]


# DATA STRUCTURES


# ALGORITHM
- Return nil if pockets is nil
- Initialize suspects to []
- Iterate over k/v pairs of pockets:
  - person <- k
  - Items <- v
  - Iterate over items:
    - If we find an item not in allowed_items, add person to suspects
      break out of the item loop and continue to next person
- Return suspects if it is nonempty, otherwise return nil

=end

pockets = { 
  bob: [1],
  tom: [2, 5],
  jane: [7]
}

def find_suspects(pockets, allowed_items)
  return nil if pockets.nil?

  suspects = []
  pockets.each do |person, items|
    items.each do |item|
      if !allowed_items.include?(item)
        suspects << person
        break
      end
    end
  end
  suspects.empty? ? nil : suspects
end


p find_suspects(pockets, [1, 2])        == [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2])  == nil
p find_suspects(pockets, [])            == [:bob, :tom, :jane]
p find_suspects(pockets, [7])           == [:bob, :tom]