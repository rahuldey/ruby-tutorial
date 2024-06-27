def sections(headline)
  puts "\n" + headline + "\n\n"
end

sections("# private methods")

class SmartPhone

  attr_reader :username, :production_number
  attr_writer :password

  def initialize(username, password)
    @username = username
    @password = password
    @production_number = generate_random_number
  end

  private

  def generate_random_number
    random_number = rand(10_000...99_999)
    another_random_number = rand(10_000...99_999)

    "2024-#{random_number}-#{another_random_number}"
  end
end


phone = SmartPhone.new("rubyfan123", "topsecret")
p phone.production_number


sections("# protected methods")


class Car
  def initialize(age, miles)
    base_value = 20_000
    age_deduction = age * 1000
    miles_deduction = miles / 10
    @value = base_value - age_deduction - miles_deduction
  end

  def compare_car_with(car)
    self.value > car.value ? "Your car is better!" : "Your car is worse!"
  end

  protected

  def value # making value method protect allows access from the compare_car_with method but not from outside the class
    @value
  end
end

civic = Car.new(3, 30_000)
fiat = Car.new(1, 20_000)
dodge = Car.new(8, 100_000)

p civic.compare_car_with(fiat)
p civic.compare_car_with(dodge)



sections("# class methods/static methods")

class Vehicle

  def initialize(wheels, passangers)
    @wheels = wheels
    @passangers = passangers
  end

  def Vehicle.hello # one way to declare a class
    puts "from hello method"
  end

  def self.hi # another way to declare a class
    puts "from hi method"
  end

  def self.car
    self.new(4, 5)
  end

  def self.truck
    self.new(18, 2)
  end
end

Vehicle.hello
Vehicle.hi
p Vehicle.car
p Vehicle.truck


sections("# another way to define class methods/static methods")

class Demo
  class << self # all methods declared in this block are class methods
    def hello
      puts "from hello method"
    end

    def hi
      puts "from hi method"
    end

    def createOne
      self.new(1)
    end

    def createOTwo
      new(2) # in context of the static block the self can be removed and ruby will assume that static methods are being called on the class. hence new would be called correctly.
    end

  end

  def initialize(value)
    @value = value
  end

end

Demo.hello
Demo.hi
p Demo.createOTwo


sections("# class variables")

class Bicycle
  @@count = 0

  def self.count
    @@count
  end

  def initialize
    @@count += 1
  end
end


Bicycle.new
Bicycle.new
Bicycle.new
Bicycle.new
p Bicycle.count


sections("# defining new methods of a class outside the original class body")

class Extenadble
end

obj = Extenadble.new
# obj.some_method  #  it is not accessible here before some_method has been parsed

class Extenadble
  def some_method
    puts " I got added to the Extenadble class"
  end
end

obj.some_method


sections("# monkey patching")

class String
  def count_vowels # add this method to the ruby string class
    self.downcase.count("aeiou")
  end
end

p "hello world".count_vowels
