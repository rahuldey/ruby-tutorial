puts "Hello\nWord"
puts 'Hello\nWorld' # single quote treats the \n literally and not as an escape character. it also does not support string interpolation

puts <<MLS
 this is a
      multi line string
 that retains its formatting when printed
 to the screen
MLS

# ways of concating strings

# non mutating

first_name = "rahul"
last_name = "dey"

puts first_name + last_name

# mutating

first_name.concat(last_name)
puts first_name

hello = "hello"
world = "world"

hello << world # shovel operator mutates hello and appends world to it

puts hello


# length and size method are aliases
puts "hello world".length
puts "hello world".size


# index in string
puts "########String Index########"
story = "Once upon a time"
puts story[0]
puts story[1]
puts story[2]
puts story[3]
puts story[-1] # starts printing from the end

puts story.slice(0) # the slice method does the same thing as []
puts story.slice(1)
puts story.slice(2)
puts story.slice(3)
puts story.slice(-1) # starts printing from the end

# substring of string
puts "########Substring########"
story = "Once upon a time"
puts story[1, 2] # index and number of characters to take from the index
puts story[0, story.length] # the whole string
puts story.slice(1, 3)


# modifying strings
puts "########Modifying Strings########"
thing = "rocket ship"
puts thing
thing[0] = "p"
puts thing

like = "I like strawberry"
puts like
like[7, 5] = "rasp"
puts like

incorrect_string = "heloworld"
puts incorrect_string
incorrect_string.insert(3, "l") #modify without overwrite
puts incorrect_string

# empty? method
puts "".empty?


# methods on strings

lowercase_string = "lower case string"
puts lowercase_string.upcase # string is not modified
puts lowercase_string
lowercase_string.upcase! # bang methods mutates string object
puts lowercase_string
