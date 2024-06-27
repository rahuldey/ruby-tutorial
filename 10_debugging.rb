require "debug"

name = "rahul"
puts "my name is #{name}"

debugger

name = "bhavna"
puts "name has been updated to #{name}"

binding.break # same as debugger

puts "program ends"
