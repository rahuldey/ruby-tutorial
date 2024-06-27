def sections(headline)
  puts "\n" + headline + "\n\n"
end

sections("# basics of hashes")

empty_hash = {}
p empty_hash
p empty_hash.class


number_hash = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four"
}

p number_hash
puts number_hash
p number_hash[4]

p number_hash[5]
p number_hash.fetch(5, "Five") # provide a default value


sections("# symbols - lightweight strings used as identifiers")

p :hello
p :hello.class

p "hello".methods.length
p :hello.methods.length

p :hello.object_id == :hello.object_id # true
p "hello".object_id == "hello".object_id # false


sections("# using symbol as key in map")

person = {
  :name => "rahul",
  :age => 34
}

puts person[:name]
puts person[:age]

person = {
  name: "rahul",
  age: 34
} # same as the previous object person, the keys are still symbols. this is a shorcut to use symbols as keys
p person


sections("# short cut for creating hash when key name and variable name as the same")

red = 230
green = 100
blue = 50

color = { red: red, green: green, blue: blue}
color_short_cut = { red:, green:, blue: } # same as above

p color
p color_short_cut
p color == color_short_cut


sections("# adding/updating hash")

menu = { burger: 3.99, taco: 1.99 }
p menu

menu[:sandwhich] = 2.99
menu.store(:burrito, 5.99) # same as above
p menu


sections("# iterating over a hash")
red = 230
green = 100
blue = 50
color = { red: red, green: green, blue: blue}
color.each { |key, value| puts "#{key}=>#{value}"}
color.each_key { |key| puts "#{key}"}
color.each_value { |value| puts "#{value}"}
p color.keys
p color.values


sections("# check for inclusion in hash")
red = 230
green = 100
blue = 50
color = { red: red, green: green, blue: blue}
p color.include?("red") # false
p color.include?(:red) # true
p color.key?(:red) # same as above
p color.has_key?(:red) # same as above

p color.value?(red)
p color.has_value?(red) # same as above


sections("# select/reject methods for filtering hash")
red = 230
green = 100
blue = 50
color = { red: red, green: green, blue: blue}

p color.select { |key, value| value > 80 }
p color.select { |key, value| key == :red }


p color.reject { |key, value| key == :red }


sections("# hash to 2d array and 2d array to hash")
red = 230
green = 100
blue = 50
color = { red: red, green: green, blue: blue}
p color.to_a

p [[:a, "a"], [:b, "b"], [:c, "c"]].to_h


sections("# delete method on hash")
red = 230
green = 100
blue = 50
color = { red: red, green: green, blue: blue}
p color
color.delete(:red)
p color


sections("# merging two hashes")
hash1 = { hello: "world", rainy: "day"}
hash2 = { hello: "rahul", beautiful: "sunshine"}

p hash1.merge(hash2) # in case of duplicate keys values from the hash passed as the argument will be taken for those duplicate keys
p hash1.merge!(hash2) # updates hash1 inplace


sections("# creating hashes with constructor")
numbers = Hash.new(0) # 0 is the default "value" for a key that does not exist
numbers[:pi] = 3.14
numbers[:e] = 2.71
p numbers
p numbers[:hello] # 0


sections("# problems and solutions to creating hashes with constructor")

## basic problem
recipies = Hash.new([]) # this array is returned everytime the hash is invoked with a missing key. it is the same array for all missing keys which leads to problems
recipies[:soup] = ["water", "salt", "vegetables"]
p recipies
p recipies[:rice] # returns []
p recipies[:rice] << "water" # adds water to the recipie
p recipies[:noodles] # also has water added to the array returned

# partial solution
recipies = Hash.new { [] } # instead of returning a fixed object invoke the block when key is missing in hash. each invocation of the block creates a new object that is returned
recipies[:soup] = ["water", "salt", "vegetables"]
p recipies
p recipies[:rice] # returns []
p recipies[:rice] << "water" # this is ignored. the block returns an array which is updated but not referenced by the code and hence is garbage collected and discarded by ruby.
p recipies

# solution
recipies = Hash.new do |hash, key| # the hash itself and the missing key accessed are passed to the block. each time the block is called with a missing key is added to the hash with a default value of []. the [] is then returned from the block
  arr = []
  hash[key] = arr
  arr
end

# shorter solution
recipies = Hash.new do |hash, key|
  arr = []
  hash[key] = arr # something = some other thing returns some other thing by default and hence there is no need to explicitly write arr on the last line

end

# shortest solution
# recipies = Hash.new do |hash, key|
recipies = Hash.new { |hash, key| hash[key] = [] }
recipies[:soup] = ["water", "salt", "vegetables"]
p recipies
p recipies[:rice] # returns []
p recipies[:rice] << "water" # adds water to the recipie
p recipies[:noodles] # also has water added to the array returned
p recipies
