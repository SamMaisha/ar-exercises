require_relative '../setup'

puts "Exercise 1"
puts "----------"

# 1. Use Active Record's `create` class method multiple times to create 3 stores in the database:

# - Burnaby (annual_revenue of 300000, carries men's and women's apparel)
# - Richmond (annual_revenue of 1260000 carries women's apparel only)
# - Gastown (annual_revenue of 190000 carries men's apparel only)

store1 = Store.new
store1.name = "Burnaby"
store1.annual_revenue = 300000
store1.mens_apparel = true
store1.womens_apparel = true
store1.save

store2 = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true )

store3 = Store.new do |s|
  s.name = "Gastown"
  s.annual_revenue = 190000
  s.mens_apparel = true
  s.womens_apparel = false
end

store3.save