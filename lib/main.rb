# Christabel Sebastian
# Last updated, Sept 19. 2020
# Ada C14
# Flower Shop: Main Program

require_relative 'flower'

rose = Flower.new(
  name: "rose",
  size: "medium",
  color: "red",
  quantity_in_stock: 144,
  bundle_size: 24,
  max_stock: 350,
  total_sold: 15042
)

puts "There are #{rose.quantity_in_stock} #{rose.name.capitalize}(s) currently in stock and #{rose.total_sold} units sold."

# Sell some roses (46 total)
rose.sell(12)
rose.sell(1)
rose.sell(24)
rose.sell(9)

# Check stock and total sold
# rose.quantity_in_stock=> 98, rose.total_sold => 15088
puts "After sales, there are #{rose.quantity_in_stock} #{rose.name.capitalize}(s) in stock and #{rose.total_sold} units sold."

# restock roses (logic below)
rose.restock
puts rose.quantity_in_stock #=> 338