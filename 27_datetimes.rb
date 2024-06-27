def sections(headline)
  puts "\n" + headline + "\n\n"
end

sections("# date object")

require "date"
date = Date.new(1989, 10, 04)
p date.year
p date.month
p date.day
p date.wednesday?


sections("# time object")

puts Time.new
puts Time.now
time = Time.new(1989, 10, 04, 18, 43, 31) # year, month, day, hours, minutes, seconds
p time.hour
p time.mday # day of the month
p time.yday # day of the year
p time.wday # day of the week
