=begin
input: word
output: boolean

Rules:
  - To be a block word you can only use one letter from any given pair.
  - Each block can only be used once.
  - Input words can be lowercase

Questions:
  - How to represent Blocks?
  - How to get a fresh set of blocks for each call of block_word?
    - Global BLOCKS, call BLOCKS.dup
    - Pass in blocks copy to helper functions

Algorithm:
  - Convert word to uppercase
  - Iterate through each letter of word in turn
    - Try to remove block for current letter
      - If no block available, return false
  - Return true



=end

require 'pry'

BLOCKS = 'BO XK DQ CP NA GT RE FS JW HU VI LY ZM'.freeze

def remove_block(letter, blocks) 
  blocks.delete_if { |block| block.include?(letter) }
end

def letter_available?(letter, blocks)
  blocks.any? { |block| block.include?(letter) }
end

def block_word?(word)
  blocks = BLOCKS.split
  word.upcase.chars.each do |letter|
    letter_available?(letter, blocks) ? remove_block(letter, blocks) : (return false)
  end
  true
end

# binding.pry


p block_word?('BATCH')  #== true
p block_word?('BUTCH')  #== false
p block_word?('jest')   #== true