require "./store_item.rb"

i1 = Inventory.new(name: 'paint', price: 5, color: 'red', count: 5)
i2 = Inventory.new(name: 'paint brush', price: 10, color: 'brown', count: 7)
i3 = Inventory.new(name: 'canvas', price: 20, color: 'white', count: 9)

puts i1.desc
puts i2.desc
puts i3.desc

puts i1.price
puts i2.name
puts i3.color

puts i2.count
i2.restock(5)
puts i2.count
