def sections(headline)
  puts "\n" + headline + "\n\n"
end

sections(" inheritance")


class Employee
  attr_reader :name
  attr_accessor :age


  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name} and I am #{age} years old."
  end
end

ken = Employee.new("Ken", 35)
p ken.introduce


class Manager < Employee

  attr_reader :rank

  def initialize(name, age, rank)
    super(name, age)
    @rank = rank
  end

  def yell
    "Who's the boss? I'm the boss!"
  end

  def introduce
    result = super()
    result + " I am a manager"
  end
end


class Worker < Employee
  def clock_in(time)
    "Starting my shift at #{time}"
  end
end

sally = Manager.new("Sally", 42, "Senior VP")
chuck = Worker.new("Chuck", 53)
p sally.yell
p sally.introduce
p chuck.clock_in("8:30AM")

sections(" superclasses and ancestors")

p Integer.superclass
p 5.class.superclass
p 5.class.superclass.superclass
p 5.class.superclass.superclass.superclass
p [].class.ancestors

p Manager < Employee # check if Manager inherits from Employee
p Employee < Manager

bob = Manager.new("Manager", 40, "VP")

p bob.instance_of?(Manager) # true
p bob.instance_of?(Employee) # false
p bob.is_a?(Manager) #true
p bob.is_a?(Employee) #true


sections(" ways to use super keyword")

class Car
  def drive(speed)
    "Room! Room at #{speed} mph."
  end

  def park
    "Parking car now."
  end

  def brake(final_speed)
    "Braking car down to #{final_speed} mph."
  end

end


class Firetruck < Car
  def drive(speed)
    super +  "Beep! Beep at #{speed} mph." # calling super without params and parathesis passes all arguments to current method to the super method
  end

  def park
    super() + " Parking firetruck now."  # calling super without arguments passes no arguments to the super method
  end

  def brake(initial_speed, final_speed)
    super(final_speed) + " Braking firetruck from #{initial_speed} mph." # passing only certain arguments to super explicitly
  end
end

ft = Firetruck.new
p ft.drive(20)
p ft.park
p ft.brake(50, 10)


sections(" defining equality for custom classes")


class Square
  attr_reader :side
  def initialize(side)
    @side = side
  end

  def ==(other)
    side == other.side
  end
end


s1 = Square.new(10)
s2 = Square.new(10)
s3 = Square.new(20)

p s1 == s2
p s2 == s3
