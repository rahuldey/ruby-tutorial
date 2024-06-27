puts "hello world".length

puts "hello world".upcase
puts "hELLO WoRLD".downcase

puts 1.next
puts (-1).succ
puts 1.pred

puts "hi there".length.next

# the two statements below are the same. p takes the input and calls the inspect method on it
p "Hello\nWorld"
puts "Hello\nWorld".inspect

# string interpolation
age = 10
puts "I am #{age} years old"

puts 1.class
puts 1.5.class
puts "Hello World".class
puts nil.class

text = "5"
puts text.to_i

text = "5.778"
puts text.to_f
puts text.to_f.to_s

# taking input from user
name = gets.chomp # chomp removes the linebreak from the end of the input
puts "Your name is #{name}. Awesome!"
