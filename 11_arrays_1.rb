# 1D arrays
numbers = [2, 4, 6, 8]
p numbers

# 2D arrays
spreadsheet = [
  ["Student", "Class", "Grade"],
  ["Sally", "Computer Science", 95],
  ["Ingrid", "Physics", 45]
]

p spreadsheet

first_row, second_row, third_row = spreadsheet

p first_row
p second_row
p third_row

# shorthand for string arrays

names = ["Jack", "Jill", "James"]
names_shorthand = %w[Jack Jill  James] # same as above
p names
p names_shorthand

# array indexing

numbers = [2, 4, 6, 8]
puts numbers[0]
puts numbers[1]
puts numbers[2]
puts numbers[-1]

puts numbers.slice(0)
puts numbers.slice(1)
puts numbers.slice(2)
puts numbers.slice(-1)

numbers[4] = 10
p numbers
numbers[10] = 20
p numbers

# getting elements using fetch
numbers = [2, 4, 6, 8]
puts numbers.fetch(3)
# puts numbers.fetch(100) # will throw an exception unlike the [] synxtax
puts numbers.fetch(100, 40) # provide a default value if index does not exist


# getting/updating multiple elements from array
puts "#####getting/updating multiple elements from array"
numbers = [2, 4, 6, 8, 10, 12]
p numbers
p numbers[0, 2]
p numbers.slice(0, 2) # same as above

p numbers
numbers[3, 2] = [11, 13]
p numbers

p numbers.values_at(0, 3, 5) # get values at these indices

p numbers.first # returns the first element
p numbers.first(3) # returns the first three elements in an array
p numbers.first(1) # returns the first one element in an array


p numbers.last # returns the last element
p numbers.last(3) # returns the last three elements in an array
p numbers.last(1) # returns the last one element in an array

# length, size, count methods
numbers = [2, 4, 6, 8, 2, 2]
puts numbers.length
puts numbers.size # same as above
puts numbers.count # save as above
puts numbers.count(2) # will count how many times 2 occurs in the array


# is empty? array
puts [].empty?

# adding to tne end of an array
numbers = [2, 4, 6, 8]
p numbers
numbers.push(10)
p numbers
numbers.push(12, 14)
p numbers
numbers << 16 << 18
p numbers

# insert at index
numbers = [2, 4, 6, 8]
p numbers
numbers.insert(1, 3)
p numbers

# remove from array

numbers = [2, 4, 6, 8, 10, 12]
puts numbers.pop # removes last element and returns it
p numbers.pop(2) # removes last two elements and returns them in an array
p numbers.pop(1)# removes last element and returns it in an array


# operations from the begining of the array
numbers = [2, 4, 6, 8, 10, 12]
puts numbers.shift # removes from the start of the array and returns element
p numbers.shift(1) # removes from the start of the array and returns element in array
p numbers.shift(2) # removes from the start of the array and returns elements in array
p numbers.unshift(100) # inserts into the start of the array
p numbers.unshift(200, 300) # inserts into the start of the array
