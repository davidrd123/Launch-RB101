=begin

Not to brag, but I recently became the nexus of the Codewars universe! 
My honor and my rank were the same number. I cried a little.

Complete the method that takes a hash/object/directory/association list of users, 
and find the nexus: the user whose rank is the closest in value to his honor. 
Return the rank of this user. For each user, the key is the rank and the value is the honor.

If nobody has an exact rank/honor match, return the rank of the user who comes closest. 
If there are several users who come closest, return the one with the lowest rank 
(numeric value). The hash will not necessarily contain consecutive rank numbers; 
return the best match from the ranks provided.

Example
         rank    honor
users = {  1  =>  93,
          10  =>  55,
          15  =>  30,
          20  =>  19,    <--- nexus
          23  =>  11,
          30  =>   2 }


# PROBLEM:
- input: hash (rank, honor)
- output: key of the user whose difference between rank and honor is the least
   
# Rules/Requirements
- Find the user whose differential between rank and honor is the smallest
- Break ties by returning the lowest rank of tied individuals.


# Questions:



# Examples:
p nexus({1 => 3, 3 => 3, 5 => 1}) == 3
p nexus({1 => 10, 2 => 6, 3 => 4, 5 => 1}) == 3
p nexus({1 => 10, 2 => 3, 3 => 4, 5 => 1}) == 2


# DATA STRUCTURES
- current_nexus: hash of the current nexus user
-> convert users into an array of arrays
  [delta, rank]
  - then sorting this array of arrays with standard sort over arrays
    will produce the ordering we're looking for, the nexus should be first

# ALGORITHM

- Invert the hash (rank, honor) -> [honor, rank]
  - Then map over the hash converting the first element to the absolute value
    of the difference between honor and rank
        [|honor - rank|, rank]
- Then sort the array and take the first which will be the nexus
 

=end

def nexus(users)
  users.invert.map { |honor, rank| [(rank - honor).abs, rank] }.min[1]
end

p nexus({1 => 3, 3 => 3, 5 => 1})           == 3
p nexus({1 => 10, 2 => 6, 3 => 4, 5 => 1})  == 3
p nexus({1 => 10, 2 => 3, 3 => 4, 5 => 1})  == 2