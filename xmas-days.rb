require 'date'

# Giving a date as the argument returns the number of days until christmas of
# the same year.
#If the date is after christmas day then returns days until
# christmas of next year.

# 1.Define a method which takes date as a parameter
# 2. Check if the date occurs after Xmas (25 Dec)
# 3. If so add 1 to the date's year
# 4. Define a variable for xmas day
# 5. Subtract the date from the xmas day
# 6. call the method by providing a real date as the argument


# def days_until_xmas(date = Date.today)

#   year = date.year
#   if date.month == 12 && date.day > 25
#     year = date.year + 1
#   end

#   xmas_day = Date.new(year, 12, 25)

#   (xmas_day - date).to_i
# end



def days_until_xmas(date = Date.today)
  xmas_day = Date.new(date.year, 12, 25)
  if xmas_day < date
    xmas_day = xmas_day.next_year
  end
  (xmas_day - date).to_i
end

puts days_until_xmas



# puts days_until_xmas == 278 #change this number by the number of days until xmas
# puts days_until_xmas(Date.new(2019,12,25)) == 0
# puts days_until_xmas(Date.new(2019,12,26)) == 364

# require 'date'

# def days_until_xmas(someday = Date.today)
#   xmas_date = Date.new(someday.year, 12, 25)
#   xmas_date = xmas_date.next_year if xmas_date < someday
#   return (xmas_date - someday).to_i
# end

# We want to display "true" to test our method (TDD)
puts days_until_xmas == 278 #change this number by the number of days until xmas
puts days_until_xmas(Date.new(2018,12,25)) == 0
puts days_until_xmas(Date.new(2018,12,26)) == 364

# def days_until_xmas(date = Date.today)
#   xmas = (Date.new(2019, 12, 25))
#   new_year_xmas = xmas.next_year
#   if date <= Date.new(2019, 12, 25)
#     days = (Date.new(2019, 12, 25) - date).to_i
#   else
#     days_next_year = (new_year_xmas - date).to_i
#   end
# end


