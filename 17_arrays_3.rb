def sections(headline)
  puts "\n" + headline + "\n\n"
end

sections("# reverse arrays")
nums = [1, 2, 3, 4, 5]
p nums.reverse
nums.reverse!
p nums


sections("# sort arrays")
nums = [3, 4, 5, 1, 2]
p nums.sort


sections("# uniq from arrays")
nums = [3, 4, 5, 1, 2 , 3, 1]
p nums.uniq


sections("# remove nil from arrays")
nums = [1, nil, 3, 4]
p nums.compact


sections("# reduce/inject")
p [1, 2, 3].reduce(0) { |sum, num| sum + num }


sections("# flatten array")
nums = [1, [2, 3], 4, [5, 6 ,7]]
p nums
p nums.flatten


sections("# sample from an array")
nums = [1, 2, 3, 4, 5]
p nums.sample
p nums.sample(3)


sections("# union of arrays")

p [1, 2, 3] | [2, 3, 4]
p [1, 2, 3].|([2, 3, 4]) # same as above


sections("# difference of arrays")

p [1, 2, 3] - [2, 3, 4]
p [1, 2, 3].-([2, 3, 4]) # same as above


sections("# intersection of arrays")

p [1, 2, 3] & [2, 3, 4]
p [1, 2, 3].&([2, 3, 4]) # same as above
