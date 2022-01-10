=begin

Polycarpus works as a DJ in the best Berland nightclub, and he often uses 
dubstep music in his performance. Recently, he has decided to take a couple 
of old songs and make dubstep remixes from them.

Let's assume that a song consists of some number of words (that don't contain WUB). 
To make the dubstep remix of this song, Polycarpus inserts a certain number of words 
"WUB" before the first word of the song (the number may be zero), after the last word 
(the number may be zero), and between words (at least one between any pair of 
  neighbouring words), and then the boy glues together all the words, including 
  "WUB", in one string and plays the song at the club.

For example, a song with words "I AM X" can transform into a dubstep remix as 
"WUBWUBIWUBAMWUBWUBX" and cannot transform into "WUBWUBIAMWUBX".



# PROBLEM:
- input: single non-empty English string, length < 200 chars
- output: The words of the initial song that Polycarpus used to make a dubstep remix
          Separate the words with a spacew
   
# Rules/Requirements
- Remove 'WUB'
- Return original strings with spaces between
- Original string all alpha chars

# Questions:



# Examples:
p song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")  ==  "WE ARE THE CHAMPIONS MY FRIEND"
p song_decoder("AWUBBWUBC") == "A B C"
p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C"
p song_decoder("WUBAWUBBWUBCWUB") == "A B C"


# DATA STRUCTURES
- array to hold original strings

# ALGORITHM
- initialize result to empty array
- split original string on "WUB", store in array
- filter out empty strings from that array
- join array to string with space and return

=end

def song_decoder(string)
  string.split('WUB').reject(&:empty?).join(' ')
end




p song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB")  ==  "WE ARE THE CHAMPIONS MY FRIEND"
p song_decoder("AWUBBWUBC") == "A B C"
p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C"
p song_decoder("WUBAWUBBWUBCWUB") == "A B C"