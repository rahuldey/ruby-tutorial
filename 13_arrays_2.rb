def sections(headline)
  puts "\n" + headline + "\n\n"
end

sections("# each method on blocks")

names = ["bo", "moe", "joe"]
names.each { |name| puts name.upcase}
p names


names = ["bo", "moe", "joe"]
names.each { |name| puts name.upcase!} # the original array gets updated here
p names

numbers = [1, 2, 3, 4, 5]
numbers.each do |num|
  puts num * num
end


sections("# filtering elements")

evens = []
numbers.each { |number| evens.push(number) if number.even? }
p evens


sections("# each within each")

shirts = ["striped", "plain white", "plaid", "band"]
ties = ["polka dot", "solid color", "boring"]

shirts.each do |shirt|
  ties.each { |tie| puts "#{shirt} - #{tie}"}
end


sections("# the for loop")

for number in [1, 2, 3, 4, 5]
  p number
end

for number in 1..5
  p number
end

for number in 1...5
  p number
end

sections("# each with index")
colors = ["Red", "Blue", "Green", "Yellow"]
colors.each_with_index { |color, index| puts color + " " + index.to_s}


sections("# map method")
colors = ["Red", "Blue", "Green", "Yellow"]
p colors.map { |color| color.length }
p colors.collect { |color| color.length } # same as above

sections("# select/reject method that filters elements from an array")

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

even_numbers = numbers.select { |number| number % 2 == 0 }
odd_numbers = numbers.reject { |number| number % 2 == 0 }
p even_numbers
p odd_numbers


sections("# partition method which is a combination of select and reject and returns two arrays that satisfy and not satisfy the filter condition")
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]

even_numbers, odd_numbers = numbers.partition { |number| number % 2 == 0 }
p even_numbers
p odd_numbers


sections("# any?/all? predicate methods")

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
puts numbers.any? { |number| number.even? }
puts numbers.all? { |number| number > 0 }
puts numbers.all? { |number| number.even? }


sections("# find/detect returns that first element that matches the condition")

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
puts numbers.find { |number| number == 5 }
p numbers.find { |number| number == 50 }
p numbers.detect { |number| number == 50 } # same as above

sections("# index/find_index returns the index of position searched for")

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p numbers.index(5)
p numbers.find_index(5) # same as above
p numbers.index(50)
p numbers.find_index(50)


sections("# include predicate method returns true if element exists in array")
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p numbers.include?(5)
p numbers.include?(50)

sections("# max and min")
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
p numbers.max
p numbers.min


sections("#methods with variable number of arguments")

def adder(*nums) # the variable number of arguments are captured in an array
  sum = 0
  nums.each { |num| sum += num}
  sum
end

puts adder(1, 2, 3, 4)
