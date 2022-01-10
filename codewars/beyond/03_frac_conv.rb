=begin

Given a string representing a simple fraction x/y, your function must return a 
string representing the corresponding mixed fraction in the following format:

[sign]a b/c

where a is integer part and b/c is irreducible proper fraction. There must be 
exactly one space between a and b/c. Provide [sign] only if negative (and non zero) 
and only at the beginning of the number (both integer part and fractional part 
  must be provided absolute).

If the x/y equals the integer part, return integer part only. If integer part 
is zero, return the irreducible proper fraction only. In both of these cases, 
the resulting string must not contain any spaces.

Division by zero should raise an error (preferably, the standard zero division 
error of your language).

# PROBLEM:
- input: string
- output: string / error
   
# Rules/Requirements
x / y -> [sign]a b/c

- Keep sign
- If numerator is 0, result is 0
- If denominator is 0, raise ZeroDivisionError
- If x/y == a, return a only

# Questions:



# Examples:
Input: 42/9, expected result: 4 2/3.
Input: 6/3, expedted result: 2.
Input: 4/6, expected result: 2/3.
Input: 0/18891, expected result: 0.
Input: -10/7, expected result: -1 3/7.
Inputs 0/0 or 3/0 must raise a zero division error.


# DATA STRUCTURES


# ALGORITHM
- Split on `/`, store first part in x, second part in y, converting to integer
- If y is zero, raise ZeroDivisionError
- If x is zero, return 0
- Determine if x is negative, store in boolean is_neg
  assign abs(x) to x

- [a, numer] = x.divmod(y)
  - x, y = reduce_frac(numer, y)
- If numer is 0, return a with sign: format(is_neg, a)
- Else reduce fraction -> b, c
- 
=end


def format_whole_num(is_neg, a)
  mixed_frac = a.to_s
  is_neg ? "-" + mixed_frac : mixed_frac
end

def format_frac(is_neg, a, b, c)
  if !a.zero? 
    mixed_frac = "#{a} #{b}/#{c}"
  else
    mixed_frac = "#{b}/#{c}"
  end

  is_neg ? "-" + mixed_frac : mixed_frac
end

def reduce_frac(numer, denom)
  gcd = numer.gcd(denom)
  return [numer/gcd, denom/gcd]
end

def mixed_fraction(s)
  x, y = s.split('/').map(&:to_i)
  raise ZeroDivisionError if y.zero?
  return "0" if x.zero?
  is_neg = x.negative?
  x = x.abs
  if y.negative?
    is_neg = !is_neg
    y = y.abs
  end

  a, numer = x.divmod(y)
  return format_whole_num(is_neg, a) if numer.zero?
  x, y = reduce_frac(numer, y)
  format_frac(is_neg, a, x, y)
end


p mixed_fraction('42/9') # '4 2/3'
p mixed_fraction('6/3') # '2'
p mixed_fraction('4/6') # '2/3'
p mixed_fraction('4/-6') # '-2/3'
p mixed_fraction('0/18891') # '0'
p mixed_fraction('-10/7') # '-1 3/7'
p mixed_fraction('10/-7') # '-1 3/7'
p mixed_fraction('-22/-7') # '3 1/7'