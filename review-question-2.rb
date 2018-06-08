# Finish the implementation of the Car class so it has the functionality described below
require "pry"
class Car
  attr_accessor :make, :model
  @@all = []

  def self.all
    @@all
  end


  def initialize(car_hash)
    @make = car_hash[:make]
    @model = car_hash[:model]
    self.class.all << self
  end
  def drive
    "VROOOOOOOOOOOOM!"
  end

end

car = Car.new("volvo", "lightening")
car.make
#=> "volvo"
car.model
#=> "ligthening"

car.drive
# => "VROOOOOOOOOOOOM!"

Car.all
#=> [car1, car2, car3]

BONUS:

Car.new(make: "volvo", model: "lightening")

car.make
#=> "volvo"
car.model
#=> "ligthening"
