# age in seconds: how old am I in seconds?

# calculate number of days in my life: each leap-year adds one day to my life
my_age_in_years = 40
days_in_an_ordinary_year = 365
number_of_leap_years_in_my_life = 10
days_in_my_life = my_age_in_years * days_in_an_ordinary_year + number_of_leap_years_in_my_life

hours_in_a_day = 24
minutes_in_an_hour = 60
seconds_in_a_minute = 60

my_age_in_seconds = days_in_my_life * hours_in_a_day * minutes_in_an_hour * seconds_in_a_minute

puts my_age_in_seconds
# => 1.262.304.000
