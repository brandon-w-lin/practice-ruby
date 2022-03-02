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


class Inventory
  attr_reader :name, :price, :color
  attr_writer :name, :price, :color
  
  def initialize(options)
    @name=options[:name]
    @price=options[:price]
    @color=options[:color]
  end

  def desc
    puts "#{@name} costs #{price} and is #{color}"
  end
end

i1 = Inventory.new(name: 'paint', price: 5, color: 'red')
i2 = Inventory.new(name: 'paint brush', price: 10, color: 'brown')
i3 = Inventory.new(name: 'canvas', price: 20, color: 'white')

puts i1.desc
puts i2.desc
puts i3.desc

puts i1.price
puts i2.name
puts i3.color
