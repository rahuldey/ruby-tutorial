if 5 < 7
  puts "condition is true"
end

kangaroo = "kangaroo"

if kangaroo.length == 8
  puts "string has 8 chars"
end

if 5.odd?
  puts "5 is odd"
end

if -1 && 0
  puts "-1 && 0 are truthy"
end

if nil
  puts "nil is falsy"
end

if false
  puts "false is falsy"
end

color = "Red"

if color == "Red"
  puts "color is red"
elsif color == "Yellow"
  puts "color is yellow"
end

grade = "B"

if grade == "A"
  puts "grade is A"
else
  puts "grade is not A"
end

puts "Enter username"
username = gets.chomp
puts "Enter password"
password = gets.chomp

if username == "rubydev1" && password == "topsecret"
  puts "User is logged in"
else
  puts "Login not authorized"
end


entree = "Steak"
price = 19.99

if entree == "Steak" || price < 29.99
  puts "At least one condition is true"
end

result = 1 < 2 ? "One is less than two" : "One is not less than two"
puts result


# case/when statement in ruby

def case_example(num)
  case num
  when 1
    "number is 1"
  when 2, 3
    "number is either 2 or 3"
  else
    "number is not 1, 2 or 3"
  end
end

puts case_example(3)
puts case_example(0)

# unless statement in ruby

num = 41
unless num == 42 # same as if num != 42
  puts "the number is incorrect"
end


# statement modifiers in ruby (can be used with if and unless)

puts "1 is lesser than 2" if 1 < 2


# conditional assignement operator if the value of the variable is nil

x = nil
x ||= 5
puts x
x ||=10
puts x
