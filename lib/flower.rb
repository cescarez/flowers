class Flower
  attr_reader :bundle_size, :max_stock, :total_sold, :name, :color, :quantity_in_stock

  def initialize(hash)
    @name = hash[:name]
    @size = hash[:size]
    @color = hash[:color]
    @quantity_in_stock = hash[:quantity_in_stock]
    @bundle_size = hash[:bundle_size]
    @max_stock = hash[:max_stock]
    @total_sold = hash[:total_sold]
  end

  def sell(amount)
    raise ArgumentError , "Ordered number of flowers exceeds the max stock of flowers" if amount > max_stock
    @quantity_in_stock -= amount
    @total_sold += 1
    while @quantity_in_stock <= 0
      self.restock
    end
  end

  def restock
    #Max amount of flowers that can be ordered.#
    flowers_needed = @max_stock - @quantity_in_stock
    #Amount of bundles ordered.
    bundles_needed = flowers_needed/@bundle_size
    #Amount of flowers ordered.
    flowers_ordered = bundles_needed * @bundle_size
    #Amount of flowers now available at the boutique
    @quantity_in_stock += flowers_ordered
  end
end