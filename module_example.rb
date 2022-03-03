module Brake 
  def brake
    @speed = 0
  end
end

module Accelerate
  def accelerate
    @speed += 10
  end 
end

module Turn 
  def turn(new_direction)
    @direction = new_direction
  end
end

module InitVehicle
  attr_accessor :brake, :speed, :turn, :direction
  def initialize
    @speed = 0
    @direction = 'north'
  end
end

class Car
  include InitVehicle, Brake, Accelerate, Turn

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include InitVehicle, Brake, Accelerate, Turn

  def ring_bell
    puts "Ring ring!"
  end
end


bike = Bike.new()
bike.ring_bell
puts bike.speed

car = Car.new()
car.honk_horn
puts car.direction

puts car.speed
car.accelerate
puts car.speed