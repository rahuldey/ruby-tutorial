def sections(headline)
  puts "\n" + headline + "\n\n"
end

sections("# reading from a file")

my_novel = File.open("novel.txt")
puts my_novel.class

my_novel.each { |line| puts line }


sections("# writing to a file")

File.open("my_first_file.txt", "w") do |file|
  file.puts "Hello World"
  file.write "No new line break at the end of this line"
end


sections("# renaming and deleting a file")

File.rename("my_first_file.txt", "SomethingElse.txt")

if File.exist? "SomethingElse.txt"
  File.delete("SomethingElse.txt")
end


sections("# command line arguments")
ARGV.each { |arg| puts arg }


sections("# loading another ruby file into the current file using load method")

load "another_file.rb"
p some_func


load "another_file.rb" if 8 > 5 # load can be invoked more than once and conditionally and it loads the file more than once as well

sections("# loading another ruby file into the current file using require method")

require "./another_file" # relative path needs to be provided
require_relative "another_file" # looks in the current directory by default
