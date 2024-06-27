def sections(headline)
  puts "\n" + headline + "\n\n"
end

sections("# range is a sequence of numbers or letters in order")

inclusive_numbers = 1..5 # 5 is part of the range
exclusive_numbers = 1...5 # 5 is not part of the range

puts inclusive_numbers
puts exclusive_numbers

p inclusive_numbers.first
p exclusive_numbers.first

p inclusive_numbers.last
p exclusive_numbers.last # returns 5 as well but 5 is not part of the range


p inclusive_numbers.last(3)
p exclusive_numbers.last(3) # does not return 5 anymore


sections("# alphabetic range")

alphabet = "a".."z"
p alphabet.first
p alphabet.first(26)

alphabet = "A".."z"
p alphabet.first(50)

sections("# does exist in range")

alphabet = "a".."z"
puts alphabet.include?("z")
puts alphabet.member?("z") # same as above
puts alphabet === "z" # same as above
alphabet = "a"..."z"
puts alphabet.include?("z")
puts alphabet.member?("z") # same as above
puts alphabet === "z" # same as above


sections("# generate random numbers")

puts rand # generates between 0 & 1
puts rand.round(5)

puts rand(10) # generates an integer between 0 and 10, 10 not inclusive
puts rand(5..50) # generates an integer between 5 and 50
puts rand(5...50) # generates an integer between 5 and 50, 50 not inclusive


sections("# using range to extract elements from strings")
story = "Once upon a time in a land far, far away..."
puts story.slice(27..39)
puts story[27..39]
puts story.slice(27...39)
puts story[27...39]


sections("# case with ranges")

def calculate_test_grade(score)
  case score
  when 90..100
    "A"
  when 80...90
    "B"
  when 70...80
    "C"
  else
    "D"
  end
end

def calculate_test_grade_fancier_but_same(score)
  case score
  when 90..100 then "A" # when then one line magic
  when 80...90 then "B"
  when 70...80 then "C"
  else "D"
  end
end

puts calculate_test_grade(89)
puts calculate_test_grade_fancier_but_same(89)


sections("# range to array")

p (1..5).to_a
p (1...5).to_a
