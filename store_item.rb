# paint = {
#     name: 'paint',
#     price: 5,
#     color: 'red'
# }

# paint_brush = {
#     name: 'paint brush',
#     price: 10,
#     color: 'brown'
#   }

# canvas = {
#     name: 'canvas',
#     price: 20,
#     color: 'white'
# }

# puts paint[:price]
# puts canvas[:color]

module Restock
  def restock(count)
    @count += count
  end
end

class Inventory

  attr_reader :name, :price, :color, :count
  attr_writer :name, :price, :color, :count
  
  include Restock 

  def initialize(options)
    @name=options[:name]
    @price=options[:price]
    @color=options[:color]
    @count=options[:count]
  end

  def desc
    puts "#{@name} costs #{price} and is #{color}"
  end
end


