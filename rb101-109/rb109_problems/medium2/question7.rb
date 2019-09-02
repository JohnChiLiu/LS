Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

Examples:

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

Question:
Write a method that returns the number of Friday the 13ths in the year with a given year.

Input vs Output:
Input: integer
Output: integer

Explicit vs Implicit Rules:
Explicit:
1) Friday the 13th means it's a friday on the 13th calendar day of the month
Implicit:
N/A 

Data structures:
1) date formatting

Algorithm:
friday_13th method

1) create a new date using Date.new(year,1,13) #year month day and set to 'thirteenth'
2) initialize variable 'result' with integer value 0
3) invoke times method on integer 12
4) within do..end block, result += 1 if thirteenth is a friday using friday? method
5) skip a month using next_month
6) return 'result'


require 'date'
def friday_13th(year)
  result = 0
  thirteenth = Date.new(year, 1, 13)
  12.times do
    result += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  result
end

# point is to create the 13th on the first month of the given year using Date function
# once we have the date, we need to do two things: determine if that date is a friday, and skip to the next month for the following iteration
# create a counter that counts how many friday the 13ths are in that given year
# return the counter on last line of code