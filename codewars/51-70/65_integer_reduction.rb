=begin

In this Kata, you will be given two integers n and k and your task is to remove 
k-digits from n and return the lowest number possible, without changing the order 
of the digits in n. Return the result as a string.

Let's take an example of solve(123056,4). We need to remove 4 digits from 123056 
and return the lowest possible number. 

The best digits to remove are (1,2,3,6) so that the remaining digits are '05'. 
Therefore, solve(123056,4) = '05'.

Note also that the order of the numbers in n does not change: solve(1284569,2) = '12456', 
because we have removed 8 and 9.

More examples in the test cases.

Good luck!




# PROBLEM:
- input: n, k (integers)
- output: string (string rep of the lowest poss # resulting from deleting
    k digits from n)
   
# Rules/Requirements
- n and k are integers
- Leading 0 negates that place value
- Find and remove from n the k digits which when deleted produce the smallest number
- Order of digits of n stays the same
- Return with leading 0

# Questions:



# Examples:
p solve(123056, 1)   #== '12056'
p solve(123056, 2)   #== '1056'
p solve(123056, 3)   #== '056'
p solve(123056, 4)   #== '05'
p solve(1284569, 1)  #== '124569'
p solve(1284569, 2)  #== '12456'
p solve(1284569, 3)  #== '1245'
p solve(1284569, 4)  #== '124'

# DATA STRUCTURES
- Best candidate (lowest current number found)

# ALGORITHM
- Generate all possible numbers resulting from deleting k digits and return the smallest
- Generate all possible numbers resulting from deleting 1 digit
  '1234' -> ['123', '124', '134', '234']
    -> [['12', '13', '23'], ['12', '14', '24'], ..] flatmap -> uniq -> to_i -> min
  - If the number is d digits, then we need to gen d n-1 digit numbers
    - Apply gen_delete_one to the input number converted to string -> array of numbers

solve(number, n)
- Convert number to a string, enclose in an array, pass to solve_helper
- Handle losing leading 0s by checking length of number returned
  - Capture length difference and prepend that number of '0's


solve_helper(array, n)
- If n == 0
  - call uniq, to_i, return min
- Else:
  - Decrement n by one
  - Apply gen_delete_one across the input array
  - Flatten the result, call uniq
  - Call solve_helper (array, n)


gen_delete_one:
  - Starting with a string
    - Building up an array of strings that are produced from input string
      by deleting one character
      - reduce
      - each_with_object . with_index
        - accumulate to the array the result of dropping the character at index
          (need to join the char array back to string )
          * PROBLEM: delete_at returns the character deleted
        - needed to make a clone of the original number in a new variable to be 
          able to mutate it and then append it to the array we're building up

=end


def solve_helper(array, n)
  # return array.uniq.map(&:to_i).min.to_s if n.zero?
  return array.uniq.min_by(&:to_i) if n.zero?

  n -= 1
  array = array.map { |number| gen_delete_one(number) }.flatten.uniq
  solve_helper(array, n)
end

# number is a string rep of an integer
def gen_delete_one(number)
  number.chars.each_with_object([]).with_index do |(_, arr), idx|
    new_num = number.clone.chars
    new_num.delete_at(idx)
    arr << new_num.join
  end
end

def solve(number, n)
  answer = solve_helper([number.to_s], n)
  # length_diff = (number.to_s.length - n) - answer.length
  # answer = "0" * length_diff + answer
  answer
end

# p gen_delete_one('123456')

p solve_helper(["23456", "13456", "12456", "12356", "12346", "12345"], 2)
p solve(123056, 1)   #== '12056'
p solve(123056, 2)   #== '1056'
p solve(123056, 3)   #== '056'
p solve(123056, 4)   #== '05'
p solve(1284569, 1)  #== '124569'
p solve(1284569, 2)  #== '12456'
p solve(1284569, 3)  #== '1245'
p solve(1284569, 4)  #== '124'

