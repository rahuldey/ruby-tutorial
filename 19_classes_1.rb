def sections(headline)
  puts "\n" + headline + "\n\n"
end

sections("# creating classes")

class Guitar
  def initialize
    @type = "Acoustic" # instance variables are private by default
    @wood = "Alder"
    @strings = 6
    @price = 1000
  end

  def to_s # overriding the to_s method
    "This is an #{@type} #{@wood} guitar with #{@strings} strings"
  end

  def details
    "This is a #{self.class} class" # self is the this pointer
  end

  # getters
  def type
    @type
  end

  def wood
    @wood
  end

  def strings
    @strings
  end

  def price
    @price
  end

  # setters
  def price=(new_price)
    @price = new_price
  end
end

guitar = Guitar.new
p guitar.class
puts guitar
puts guitar.details
puts guitar.price
guitar.price=(1500)  # invokes the setter
guitar.price = 1500 # also invokes the setter
puts guitar.price


sections("# short cuts for getter/setters")

class Rectangle

  attr_reader :length, :breadth # creates getter methods
  attr_writer :length, :breadth # creates setter methods
  # attr_accessor :length, :breadth # creates getter/setter at the same time

  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end
end

rect = Rectangle.new(10, 20)
puts "#{rect.length}, #{rect.breadth}"
rect.length = 50
puts "#{rect.length}, #{rect.breadth}"
