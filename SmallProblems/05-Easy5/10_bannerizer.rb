# input: string
# output: no return value
#         print banner to stdout

# rules;
#   Explicit Requirements:
#     - Top and bottom borders printed with '+--...-+'
#       - Total width is length of string +2 on L and R side
#       - Blank lines between border and string
#     - Empty string prints border as if string length is 0 but gets its own line
#   Implicit Requirements:
#     - Input string will always fit in terminal window

def print_in_box(string)
  string = string[0..75] if (string.length + 4) > 80
  
  horiz_border = '+' + '-' * (string.length + 2) + '+'
  spacing_line = '|' + ' ' * (string.length + 2) + '|'
  puts horiz_border
  puts spacing_line
  puts '| ' + string + ' |'
  puts spacing_line
  puts horiz_border
end

# RETURN back to do FURTHER EXPLORATION - word wrapping







print_in_box('a'*76 + 'b'*40)


# print_in_box('To boldly go where no one has gone before.')
# puts
# print_in_box('')