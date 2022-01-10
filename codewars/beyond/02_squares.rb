=begin

Given a positive integral number n, return a strictly increasing sequence 
(list/array/string depending on the language) of numbers, so that the sum of 
the squares is equal to n².

If there are multiple solutions (and there will be), return as far as possible 
the result with the largest possible values:

Neither [n] nor [1,1,1,…,1] are valid solutions. If no valid solution exists, return nil

The function "decompose" will take a positive integer n and return the decomposition 
of N = n² as:

[x1 ... xk] 

Hint
Very often xk will be n-1.

# PROBLEM:
- input: integer n
- output: nil if no valid solution
          array of integers if valid solution exists
          
# Rules/Requirements
- Find sequence of *strictly increasing* numbers where the sum of the squares is equal to n.
- Neither [n] nor [1, 1, ... 1] are valid solutions
- If there are multiple solutions, return the result with the largest possible values.

# Questions:
- What does "largest possible values" mean? (how to compare solns wrt this)
  - Largest last value.


# Examples:
decompose(11) must return [1,2,4,10]. Note that there are actually two ways to 
decompose 11², 11² = 121 = 1 + 4 + 16 + 100 = 1² + 2² + 4² + 10² but don't 
return [2,6,9], since 9 is smaller than 10.

For decompose(50) don't return [1, 1, 4, 9, 49] but [1, 3, 5, 8, 49] since 
[1, 1, 4, 9, 49] doesn't form a strictly increasing sequence.

# DATA STRUCTURES


# ALGORITHM
- Given n, finding strictly increasing subsequence with sum of squares
  equal to n^2

decompose_helper(n, acc)

- Starting with n^2, find the first integer x_k s.t. x_k^2 < n^2
  -

decompose
- Find the first integer x_k st. x_k^2 < n^2
- Iterate from x_k down to 1 (?)
  - Call decompose_helper()

decompose(50)
-> decompose_helper(2500 - 49**2, [49]) 
   decompose_helper(99, [49])
   -> decompose_helper(99 - 9**2, [9, 49])
      decompose_helper(18, [9, 49])
      -> decompose_helper(18 - 4**2, [4, 9, 49])
         decompose_helper(2, [4, 9, 49])
         -> decompose_helper(2 - 1**2, [1, 4, 9, 49])
            decompose_helper(1, [1, 4, 9, 49])
            -> nil
   -> decompose_helper(99 - 8**2, [8, 49])
      decompose_helper(35, [9, 49])
      -> decompose_helper(35 - 5**2, [5, 8, 49])
         decompose_helper(10, [5, 8, 49])
         -> decompose_helper(10 - 3**2, [3, 5, 8, 49])
            decompose_helper(1, [3, 5, 8, 49])
            -> [1, 3, 5, 8, 49]

=end
require 'pry'

def sum_of_squares(array)
  array.map { |x| x**2 }.sum
end

def first_xk_lt(num)
  (Math.sqrt(num)).floor
end

def decompose_helper_try(n_2, x_k, acc)
  if x_k == acc.first 
    p "Duplicate number"
    return nil
  end
  if x_k**2 == n_2
    p "Found a solution!"
    return [x_k] + acc 
  end
  return decompose_helper(n_2 - x_k**2, [x_k] + acc)
end

def decompose_helper(n_2, acc)
  x_k_first = first_xk_lt(n_2)
  x_k_first.downto(1) do |x_k|
    p "Trying x_k = #{x_k}, acc = #{acc}"
    ans = decompose_helper_try(n_2, x_k, acc)
    p "ans = #{ans}"
    next if ans.nil? || !ans.is_a?(Array)
    return ans
  end
end

def decompose1(n)
  x_k = first_xk_lt(n**2 - 1)
  until x_k == 1
    soln = decompose_helper(n**2 - x_k**2, [x_k])
    return soln unless soln.nil?
    x_k -= 1
  end
end

def helper(n, c)
  return [] if n.zero?
  
  c = Math.sqrt(n).floor if n < c**2
  return nil if c.zero?

  begin
    helper(n - c**2, c - 1) + [c]
  rescue
    helper(n, c - 1)
  end
end

def decompose(n)
  return helper(n * n, n - 1)
end

p sum_of_squares([1, 3, 5, 8, 49]) # 2500

binding.pry