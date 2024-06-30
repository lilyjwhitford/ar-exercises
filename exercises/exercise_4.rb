require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# create more stores
Surrey = Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Whistler = Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Yaletown = Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# use where class method to fetch stores that carry mens apparel
# loop through stores and output the name and annual revenue
@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store|
  puts store.name
  puts store.annual_revenue
end

# loop through stores that carry womens apparel AND generating less than 1M in yearly rev
@women_low_revenue_stores = Store.where(womens_apparel: true, annual_revenue: { lt: 1000000 })
@women_low_revenue_stores.each do |store|
  puts "#{store.name} - #{store.annual_revenue}"
end


