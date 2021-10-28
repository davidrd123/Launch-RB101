input: integer
output: boolean

rules: 
    Explicit requirements:
    - A year is a leap year if:
      - It's evenly divisible by 4
      - Unless it's divisible by 100
        - If it is, then it is a leap year if it's evenly divisible by 400.
