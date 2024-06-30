require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# total revenue for all stores using sum method
total_revenue = Store.sum(:annual_revenue)
puts "total revenue: #{total_revenue}"

# output annual revenue for all stores using average method
average_revenue = Store.average(:annual_revenue)
puts "Average annual revenue: #{average_revenue}"

# output number of stores generating > $1M in annual sales ?
high_revenue_stores = Store.where('annual_revenue >=?', 1000000)
puts "Number of high-revenue stores: #{high_revenue_stores.size}"
