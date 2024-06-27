# blocks are like callback functions

2.times { puts "this is a single line block" }

puts

2.times do
  puts "this is a multiple line block"
  puts "one more line in the block"
end

puts

3.times { |count| puts count} # count is a block variable and is index for the loop

puts

2.times do |running_count|
  puts "The current count is " + running_count.to_s
end

puts

# method that takes a parameter and a block

5.upto(10) { |count| puts "iteration number for upto #{count}"}

puts

6.downto(1) { |count| puts "iteration number step downto #{count}"}


puts

0.step(100, 20) { |count| puts "iteration number for step #{count}"}
