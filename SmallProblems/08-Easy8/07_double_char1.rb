# input: string
# output: string with each character doubled


# Algorithm:
# - String-> char array-> map each char to char+char -> join

def repeater1(string)
  string.chars.map { |char| char + char}.join
end

def repeater(string)
  string.chars.zip(string.chars).join
end

p repeater('Hello')     #== "HHeelllloo"
p repeater("Good job!") #== "GGoooodd  jjoobb!!"
p repeater('')          #== ''