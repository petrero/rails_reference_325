# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

electronics = Category.create!(name: "Electronics")
toys = Category.create!(name: "Toys & Games")
clothes = Category.create!(name: "Clothes")
furniture = Category.create!(name: "Furniture")
foods = Category.create!(name: "Foods")

Product.create!(name: "Settlers of Catan", price: 29.95, released_on: rand(1..90).days.ago, category: toys)
Product.create!(name: "Red Shirt", price: 12.49, released_on: rand(1..90).days.ago, category: clothes)
Product.create!(name: "Oak Coffee Table", price: 223.99, released_on: rand(1..90).days.ago, category: furniture)
Product.create!(name: "Technodrome", price: 27.99, released_on: rand(1..90).days.ago, category: toys)
Product.create!(name: "Oh's Cereal", price: 3.95, released_on: rand(1..90).days.ago, category: foods)
Product.create!(name: "Game Console", price: 299.95, released_on: rand(1..90).days.ago, category: toys)
Product.create!(name: "Video Game", price: 29.95, released_on: rand(1..90).days.ago, category: toys)
Product.create!(name: "Lawn Chair", price: 34.99, released_on: rand(1..90).days.ago, category: furniture)
Product.create!(name: "Dog Toy Bone", price: 2.99, released_on: rand(1..90).days.ago, category: toys)
Product.create!(name: "Heated Blanket", price: 27.95, released_on: rand(1..90).days.ago, category: furniture)
Product.create!(name: "Flux Capacitor", price: 19.55, released_on: rand(1..90).days.ago, category: electronics)
Product.create!(name: "Chocolate Pie", price: 3.14, released_on: rand(1..90).days.ago, category: foods)
Product.create!(name: "Acoustic Guitar", price: 1025.00, released_on: rand(1..90).days.ago, category: electronics)
Product.create!(name: "Model Enterprise", price: 27.99, released_on: rand(1..90).days.ago, category: toys)
Product.create!(name: "Agricola", price: 45.99, released_on: rand(1..90).days.ago, category: toys)
Product.create!(name: "Stone Age", price: 34.99, released_on: rand(1..90).days.ago, category: toys)
Product.create!(name: "7 Wonders", price: 28.75, released_on: rand(1..90).days.ago, category: toys)
Product.create!(name: "Millennium Falcon", price: 3597200.00, released_on: rand(1..90).days.ago, category: electronics)
Product.create!(name: "Answer to Everything", price: 42.00, released_on: rand(1..90).days.ago, category: electronics)
Product.create!(name: "Box Kite", price: 63.00, released_on: rand(1..90).days.ago, category: toys)
Product.create!(name: "1000 Piece Jigsaw Puzzle", price: 14.99, released_on: rand(1..90).days.ago, category: toys)
Product.create!(name: "Rubber Ducky", price: 4.75, released_on: rand(1..90).days.ago, category: toys)
Product.create!(name: "Unicorn Action Figure", price: 8.75, released_on: rand(1..90).days.ago, category: toys)
Product.create!(name: "Rack", price: 32.49, released_on: rand(1..90).days.ago, category: furniture)
Product.create!(name: "Model Train Rails", price: 45.00, released_on: rand(1..90).days.ago, category: toys)
Product.create!(name: "CanCan Music Record", price: 2.99, released_on: rand(1..90).days.ago, category: electronics)
