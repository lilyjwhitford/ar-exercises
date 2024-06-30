require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# load the third store into @store3
@store3 = Store.find(3)

# destroy the store
@store3.destroy

# verify the store has been deleted
puts "number of stores: #{Store.count}"