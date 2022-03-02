class Vehicle
  attr_reader :brake, :accelerate
  attr_writer :turn

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  def initialize
    super
    @fuel = 100
    @make = 'Toyota'
    @model = 'Camry'
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new()
car = Car.new(100,'toyota','camry')

car.honk_horn
puts car.make
bike.ring_bell