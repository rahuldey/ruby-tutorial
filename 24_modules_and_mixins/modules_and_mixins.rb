def sections(headline)
  puts "\n" + headline + "\n\n"
end

sections("# modules introduction")

module LengthConversions
  def LengthConversions.miles_to_feet(miles)
    miles * 5280
  end

  def self.miles_to_inches(miles) # can prefix the method with module name or self
    miles_to_feet(miles) * 12
  end

  def self.miles_to_cm(miles)
    miles_to_inches(miles) * 2.54
  end
end

p LengthConversions.miles_to_inches 1
p LengthConversions.miles_to_cm 1


sections("# import modules")

require_relative("rectangle")
require_relative("square")

p Rectangle.area(10, 20)
p Square.area(10)


sections("# math module")

p Math.sqrt(4)
p Math.sin(90)
p Math::PI


sections("# uri and net/http modules")

require "uri"
require "net/http"

uri = URI.parse("https://example.com")
p Net::HTTP.get(uri)


sections("# mixins Enumerable")

class Refrigerator

  include Enumerable

  attr_reader :snacks, :drinks

  def initialize(snacks:, drinks:)
    @snacks = snacks
    @drinks = drinks
  end

  def items
    snacks + drinks
  end

  def each # implementing each enables methods from Enumerable module to function
    items.each { |item| yield item }
  end
end

fridge = Refrigerator.new(
  snacks: ["snack1", "snack2", "snack3"],
  drinks: ["drink1", "drink2", "drink3"]
)

p fridge.items
fridge.each { |item| puts "#{item} is delicious" }
p fridge.sort # sort came from Enumerable module
p fridge.map { |item| item.upcase }


sections("# mixins Comparable")

class OlympicMedal
  include Comparable

  attr_reader :type

  def initialize(type:)
    @type = type
  end

  # define spaceshit operator to enable methods from Comparable
  # return -1 if current item is less than other item
  # return 0 if two items are equal
  # return 1 if current item is greater than other item
  def <=>(other)
    if @type == other.type
      0
    elsif (@type == :gold && (other.type == :silver || other.type == :bronze)) || (@type == :silver && other.type == :bronze)
      1
    else
      -1
    end
  end
end

bronze = OlympicMedal.new(type: :bronze)
silver = OlympicMedal.new(type: :silver)
gold = OlympicMedal.new(type: :gold)

p bronze < gold
p bronze == bronze
p silver > gold
p gold < silver
p gold != silver


sections("# mixins own Module")

module Purchaseble
  def purchase(item)
    "#{item} has been purchased"
  end
end


class Bookstore
  include Purchaseble
end

class Supermarket
  include Purchaseble
end

class Bodega < Supermarket
end

bookstore = Bookstore.new
supermarket = Supermarket.new
bodega = Bodega.new

p bookstore.purchase("Harry Potter")
p supermarket.purchase("Coke")
p bodega.purchase("Bread")
p Bodega.ancestors


sections("# mixins with prepend, order of method search")

module Saveable
  def save(item)
    "Saving #{item} to disk"
  end
end

class TextFile
  include Saveable
  def save(item)
    "Saving text file #{item} to disk"
  end
end

class ImageFile
  prepend Saveable # prepend ensures lookup of module methods before class methods in the lookup order
  def save(item)
    "Saving image file #{item} to disk"
  end
end

textFile = TextFile.new
imageFile = ImageFile.new
p textFile.save("text.txt") # calls the overridden method from the class
p imageFile.save("image.jpg") # calls the save method from the module


sections("# mixins with extend, add mixin's methods as class methods")

module Announceble
  def who_am_i
    "The name of this class is #{self}"
  end
end

class Warehouse
  extend Announceble
end

p Warehouse.who_am_i

sections("# mixins with extend multiple modules")

module A
  def some_method
    "Hello from A"
  end
end

module B
  def some_method
    "Hello from B"
  end
end

class SomeClass
  include A # order of including modules matters
  include B
end

some_object = SomeClass.new
p some_object.some_method # some_method from B will be called as B was included after A


sections("# multiple declaration of same module across files")

require "./downloadable/low_quality"
require "./downloadable/high_quality"

class Song
  include Downloadable # rubt creates this module by combining the definitions from both files
end

song = Song.new
p song.download_low_quality
p song.download_high_quality


sections("# module within modules")

module FileManagement
  module CSV
    class Reader

    end
  end

  module Excel
    class Reader

    end
  end
end

csvFileReader = FileManagement::CSV::Reader.new
p csvFileReader.class
