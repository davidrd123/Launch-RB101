advice = "Few things in life are as important as house training your pet dinosaur."

ret_val = advice.slice!(0..38)
p ret_val, advice


advice = "Few things in life are as important as house training your pet dinosaur."

ret_val = advice.slice!(0, advice.index('house'))
p ret_val, advice