def sections(headline)
  puts "\n" + headline + "\n\n"
end

sections("# methods that take a block, yield keyword")

def pass_control
  puts "Starting pass_control"
  yield
  puts "Ending pass_control"
end

pass_control { puts "Inside block"}


sections("# blocks that return a value")

def who_am_i
  puts "Hello there"
  adjective = yield
  puts "I am #{adjective}"
end


who_am_i { "great" } # don't use return keyword inside a block


sections("# check if block is provided to function to prevent errors")

def pass_control_check
  puts "Starting pass_control"
  yield if block_given?
  puts "Ending pass_control"
end

pass_control_check
puts
pass_control_check { puts "with block given" }


sections("# block parameters")

def loop_method(n)
  for i in 0...n
    yield(i) if block_given?
  end
end

loop_method(5) { |index| puts "line printed for #{index} time" }


sections("# custom each method")

def custom_each(arr)
  for i in 0...arr.length
    yield(arr[i]) if block_given?
  end
end

custom_each([10, 4, 6, 2]) { |value| puts "The square of the number #{value} is #{value * value}"}


sections("# procs - reusable blocks")

to_cubes = Proc.new { |x| x ** 3 }
to_cubes = Proc.new do |x|
  x ** 3
end
to_cubes = proc { |x| x ** 3 }
to_cubes = proc do |x|
  x ** 3
end

puts to_cubes.call(5) # directly calling a proc

p [1, 2, 3].map &to_cubes # pass proc to a method

p [1, 2, 3].map(&to_cubes) # also works


sections("# methods taking proc parameters")

def talk_about(name, &my_proc)
  puts "Let me tell you about name #{name}"
  my_proc.call(name)
end

def talk_about_2(name)
  puts "Let me tell you about name #{name}"
  yield(name) if block_given?
end


my_proc = proc { |name| puts "#{name} is great" }

talk_about("Rahul", &my_proc)
talk_about("Rahul") { |name| puts "#{name} is smart" } # blocks can be used in methods that expect proc parameters
talk_about_2("Rahul", &my_proc) # methods that expect a block can also take a proc


sections("# lambdas - almost identical to procs")

squares_lambda = lambda { |num| num ** 2 }
squares_lambda = ->(num) { num ** 2 } # same as above
p [1, 2, 3].map(&squares_lambda)


sections("# difference between proc and lambda")

# lambda cares about the number of arguments passed to it. if the number of argumetns is more or less than the ones the ones declared then it will throw an error.
# lambda can return using a return statement and the control will be transferred to the method which called the lanbda. a return in a proc will cause the calling method to return as well.
