def introduce_myself
    puts "I am rahul dey"
end

def praise_person(name, age)
  puts "#{name} is talented and is #{age} years old"
end

def add_two_numbers(num1, num2)
  return num1 + num2
end

def add_two_numbers_implicitly(num1, num2)
  num1 + num2 # last line of method is returned
end


def title_assigner(name, suffix="the great")
  "#{name} #{suffix}"
end

introduce_myself
praise_person("rahul", 34)

puts add_two_numbers(5, 4)
puts add_two_numbers_implicitly(5, 4)
puts title_assigner("Rahul")
