def sections(headline)
  puts "\n" + headline + "\n\n"
end

sections("# easy passing of parameters to a method")

class Candidate
  attr_reader :name, :age, :occupation, :hobby, :birthplace

  def initialize(details)
    @name = details[:name]
    @age = details[:age]
    @occupation = details[:occupation]
    @hobby = details[:hobby]
    @birthplace = details[:birthplace]
  end
end


senator = Candidate.new({ # this method has a problem of possibly missing or incorrectly named hash keys
  name: "rahul",
  age: 34,
  occupation: "banker",
  hobby: "reading",
  birthplace: "kolkata"
})

senator = Candidate.new( # same as the above. when a hash is passed as a last argument to a method the curl braces can be omitted.
  name: "rahul",
  age: 34,
  occupation: "banker",
  hobby: "reading",
  birthplace: "kolkata"
)


puts senator.name
puts senator.age
puts senator.occupation
puts senator.hobby
puts senator.birthplace


sections("# fixing disdvantages of the above appraoch using keyword arguments")

def sum(a:, b:)
  a + b
end

p sum(a: 2, b: 3)
p sum(b: 3, a: 2) # ordering does not matter


sections("# default keyword arguments")

def difference(a: 1, b: 1)
  a - b
end

p difference(a: 5)
p difference(b: 5)
p difference(a: 5, b: 4)


sections("# mix positional arguments with keyword arguments")

def product(a, b: 1)
  a * b
end

p product(5, b: 2)
p product(5)
