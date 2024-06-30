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
  errors.add(:base, 'Must carry at least one type of apparel') unless mens_apparel || womens_apparel
end