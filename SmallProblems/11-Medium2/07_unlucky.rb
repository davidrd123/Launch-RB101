=begin

Write a method that returns the number of Friday the 13ths in the year 
given by an argument. You may assume that the year is greater than 1752 
(when the United Kingdom adopted the modern Gregorian Calendar) and that it 
will remain in use for the foreseeable future.


# PROBLEM:
- input: integer (year)
- output: integer (number of friday the 13ths)
   
# Rules/Requirements
- Input year is > 1752

# Questions:



# Examples:
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

# DATA STRUCTURES
- Jan 1 1752 was a Saturday.
- Days in Month (except leap year)
- Represent days of week:
  {:sat: 0, :sun: 1, ...}


# ALGORITHM
- Calculate starting day of week for 1/1 of year:
  - Number of days from 1/1/1752 to 1/1/year

- A month has a friday the 13th if its first day is a Sunday.
- How many months start on Sunday?
  - Find day of week of the 1st of each month

=end

require 'pry'

START_YEAR = 1752
DAYS_IN_WEEK = 7
DAYS_IN_YEAR = 365
DAYS_IN_MONTH = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
DAYS_OF_WEEK = [:Saturday, :Sunday, :Monday, :Tuesday, :Wednesday, :Thursday, :Friday]

def leap_year?(year)
  (year % 4).zero? && (year % 100 != 0 || (year % 400).zero?)
end

def num_days_up_to_present_year(curr_year)
  num_leap_years = (START_YEAR...curr_year).filter { |year| leap_year?(year) }.count
  num_years = (curr_year - START_YEAR)
  num_years * DAYS_IN_YEAR + num_leap_years
end

# month [1..12]
def num_days_up_to_present_month(month)
  DAYS_IN_MONTH[...month-1].sum
end

def day_of_week_of_first_day(month, year)
  DAYS_OF_WEEK[(num_days_up_to_present_year(year) + num_days_up_to_present_month(month)) % DAYS_IN_WEEK]
end

def has_friday_13th(month, year)
  day_of_week_of_first_day(month, year) == :Sunday
end

def friday_13th(year) 
  (1..12).count do |month|
    has_friday_13th(month, year)
  end
end
# binding.pry 

# p days_to_present_year(2021)  # 98251

# p day_of_week_for_january_1(1753)  # :Monday
# p day_of_week_for_january_1(2000)  # :Saturday
# p day_of_week_for_january_1(2021)  # :Friday

# p day_of_week_to_present_month(7, 2021)  # :Thursday
# p day_of_week_to_present_month(1, 1921)  # :Saturday


p friday_13th(2015) #== 3
p friday_13th(1986) #== 1
p friday_13th(2019) #== 2