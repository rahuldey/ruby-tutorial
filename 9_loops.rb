count = 1
while count < 10
  puts count
  count += 1
end

puts

i = 1
until i > 9
  puts i
  i += 1
end

puts

# fizz buzz problems
puts "####Fizz Buzz####"

def fizz_buzz(num)
  i = 1
  while i <= num
    if i % 3 == 0 && i % 5 == 0
      puts "FizzBuzz"
    elsif i % 3 == 0
      puts "Fizz"
    elsif i % 5 == 0
      puts "Buzz"
    else
      puts i
    end
    i += 1
  end
end

fizz_buzz(30)

# next keyword to end current iteration of loop, similar to continue in other languages

numbers = "12345"
i = 0
while i < numbers.length
  if numbers[i].to_i % 2 == 0
    i += 1
    next
  else
    puts numbers[i]
    i += 1
  end
end


# break in loops

numbers = "12345"
i = 0
while i < numbers.length
  if numbers[i].to_i % 2 == 0
    break
  else
    puts numbers[i]
    i += 1
  end
end

puts
#recursion in ruby
def factorial(num)
  if num == 1
    1
  else
    num * factorial(num - 1)
  end
end

puts "Factoria of 5 is #{factorial(5)}"


def reverse(str)
  if str.length == 0 || str.length == 1
    str
  else
    reverse(str[1, str.length]) + str[0]
  end
end

puts reverse("hello world")
