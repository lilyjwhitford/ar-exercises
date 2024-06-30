require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# load first and second store and assign it to @store1 & @store2
@store1 = Store.find(1)
@store2 = Store.find(2)

# update first store to new name
@store1.update(name: "Brentwood")

# save to database
@store1.save