puts true
puts true.class
puts false.class
puts 1 == 1

stupid = false

puts "are programmers stupid? #{stupid} !"

puts 5 == 5.0
puts 5 == "5".to_i
puts 5 != "5".to_i

#predicate methods return booleans and the convention in ruby is to end predicate method names with ?
puts "Is 10 an odd number? #{10.odd?} !"
puts "Is -8 an a negative number? #{-8.negative?} !"
puts "Is 8 an a positive number? #{8.positive?} !"

puts "Hello World".include? "Hello"
puts "Hello World".include?("Hello")

puts "is 20 between 10 and 20 #{20.between? 10, 20}"
puts "is 20 between -5 and 20 #{20.between?(-5, 10)}"

puts "The sum of 5 and 2 is #{5.+2}" # arihmetic operations are also methods on objects
puts "The different of 5 and 2 is #{5.-2}" # arihmetic operations are also methods on objects
puts "The product of 5 and 2 is #{5.*2}" # arihmetic operations are also methods on objects
puts "The quotient of 5 and 2 is #{5./2}" # arihmetic operations are also methods on objects

puts "Ceil of -2.4 is #{-2.4.ceil}"
puts "Ceil of 2.4 is #{2.4.ceil}"

puts "Floor of -2.4 is #{-2.4.floor}"
puts "Floor of 2.4 is #{2.4.floor}"
