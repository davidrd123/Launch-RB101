# input: list of [item, count] tuples
# output: list with items unpacked into array

# Algorithm:
# - Map [item, count] to [item ... (count times)]
# - Flatten that array


def buy_fruit(arr)
  arr.map { |fruit, quantity| [fruit] * quantity }.flatten
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
#["apples", "apples", "apples", "orange", "bananas","bananas"]