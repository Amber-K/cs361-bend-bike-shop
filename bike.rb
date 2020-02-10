class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented

  def initialize(id, color, price, weight = STANDARD_WEIGHT)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @cargo = Cargo.new
  end

  def add_cargo(item)
    cargo.add(item)
  end

  def remove_cargo(item)
    cargo.remove(item)
  end

  def remaining_capacity
    cargo.remaining_capacity
  end

end

class Cargo

  MAX_ITEMS = 10

  attr_accessor :contents

  def initialize()
    @contents = []
  end

  def add(item)
    self.contents << item
  end

  def remove(item)
    self.contents.remove(item)
  end

  def capacity
    MAX_ITEMS
  end

  def remaining_capacity
    MAX_ITEMS - self.contents.size
  end

end

class Rental

  def initialize(bike)
    @bike = bike
  end

end