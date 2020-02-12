!# /usr/bin/env ruby

items = [:apple, :water, :protein_bar]

luggage = Luggage.new(Luggage::DEFAULT_MAX_CAPACITY, items)

bike = Bike.new(1, :pink, 99.99, luggage)

rental = Rental.new(bike)

puts "Total Price: #{rental.price}, Total Weight: #{rental.weight}"