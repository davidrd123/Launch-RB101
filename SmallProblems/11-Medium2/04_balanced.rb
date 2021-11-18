=begin
Write a method that takes a string as an argument, and returns true if all 
parentheses in the string are properly balanced, false otherwise. 
To be properly balanced, parentheses must occur in matching '(' and ')' pairs.


# PROBLEM:
- input: string
- output: boolean
   
# Rules/Requirements
- Take a string and determine if all parentheses are properly balanced
  - To be balanced, parentheses need to occur in '( )' pairs
  - So a ')' can't occur before a '('

# Questions:



# Examples:
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false


# DATA STRUCTURES
input: string
output: boolean

keep count of open parentheses

# ALGORITHM
- Scan through characters of string
- Keep track of number of pairs "opened" at that point - num_pair_opened, start at 0
    - Encounter a "(", add 1
    - Encounter a ")"
      - If open count > 0, subtract 1
      - Else return false
- At end, if num_pair_opened is 0, then return true

Second Alg:
- Keep a stack
- On encountering an opening paran, push to stack
- On encountering a closing paren, pop stack and check if matches
    - If not, return false
- If we make it all the way through, 
  - return true if stack is empty
  - if stack has leftover elements, return false
=end

require 'pry'

def balanced2?(string)
  num_pair_opened = 0
  string.chars.each do |c|
    case c
    when '('
      num_pair_opened += 1
    when ')'
      return false if num_pair_opened.zero?
      num_pair_opened -= 1
    end
  end
  num_pair_opened.zero?
end

MATCHING_PAREN = {
  ')' => '(',
  ']' => '[',
  '}' => '{'
}

def balanced?(string)
  stack = []
  string.chars.each do |c|
    if c =~ /[\(\[\{]/
      stack.push(c)
    elsif c =~ /[\)\]\}]/
      popped = stack.pop
      return false unless popped =~ /#{Regexp.quote(MATCHING_PAREN[c])}/
    end
  end
  stack.length.zero?
end


p balanced?('What (is) this?')      == true
p balanced?('What is) this?')       == false
p balanced?('What (is this?')       == false
p balanced?('((What) (is this))?')  == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!')                 == true
p balanced?(')Hey!(')               == false
p balanced?('What ((is))) up(')     == false
p balanced?('(Hi there {david})')   == true
p balanced?('{{(){[]}}}')           == true
p balanced?('{{(]){[]}}}')          == false