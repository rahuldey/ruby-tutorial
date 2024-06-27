def sections(headline)
  puts "\n" + headline + "\n\n"
end


sections("# split method")

p "Hello World".split()
p "Hello World".split("o")

sections("# char methods and each_char")

p "hello world".chars
"hello world".each_char { |character| print character }


sections("# join method on array")

p [1, 2, 3].join
p [1, 2, 3].join(",")


sections("# count occurence of character in string")

p "hello world".count("o")


sections("# index where searching from the left")
p "hello world".index("world")
p "hello world".index("o")

sections("# rindex where searching from the right")
p "hello world".rindex("world")
p "hello world".rindex("o")

sections("# delete")
p "hello world".delete("o")
p "hello world".delete("ho")
