# input: two integers
# output: array with same # of elements as first num
#            values: multiples of starting #

# rules:
#   So given (seq_len, start)
#   and with idx -> index of array position
#   (1) * start, (2) * start, ... (seq_len) * start
#     1 * (-7), 2 * (-7), ... (4) * (-7)

# Algorithm:
# 1.upto(seq_len-1)


def sequence(seq_len, start)
  (1..seq_len).map { |multiple| multiple * start }
end

p sequence(5, 1)        #== [1, 2, 3, 4, 5]
p sequence(4, -7)       #== [-7, -14, -21, -28]
p sequence(3, 0)        #== [0, 0, 0]
p sequence(0, 1_000_000)  #== []