# This "require" line loads the contents of the "date" file from the standard
# Ruby library, giving you access to the Date class.
require "date"

def age_in_days(day, month, year)
  birth_date = Date.new(year, month, day)
  today = Date.today
 (today - birth_date).to_i
  # TODO: return the age expressed in days given the day, month, and year of birth
end
# puts age_in_days(31, 12, 1990)