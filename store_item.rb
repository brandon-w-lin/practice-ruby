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
  def initialize(name,price,color)
    @name=name
    @price=price
    @color=color
  end

  def name
    @name
  end

  def price
    @price
  end

  def color
    @color
  end

  def name=(name)
    @name=name
  end

  def price=(price)
    @price=price
  end

  def color=(color)
    @color=color
  end

  def desc
    puts "#{@name} costs #{price} and is #{color}"
  end
end

i1 = Inventory.new('paint',5,'red')
i2 = Inventory.new('paint brush',10,'brown')
i3 = Inventory.new('canvas',20,'white')

puts i1.desc
puts i2.desc
puts i3.desc
