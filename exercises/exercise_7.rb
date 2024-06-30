require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# add validations

validates :name, length: { minimum: 3 }, presence: true
validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

validate :must_carry_apparel

def must_carry_apparel
  errors.add(:base, 'must carry at least one type of apparel') unless mens_apparel || womens_apparel
end

# user input and validation errors
puts "enter a store name:"
store_name = gets.chomp
new_store = Store.new(name: store_name)

if new_store.valid?
  new_store.save
else
  new_store.errors.full_messages.each do |message|
    puts message
  end
end
