# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
      @store = Store.create!(name: "Dusty's Books", square_footage: 1100, online_sales: false)
      @store_2 = Store.create!(name: "Ava's Books", square_footage: 1500, online_sales: true) 
      @publisher = Publisher.create!(name: "DC Comics", cost: 3.95, figurines_available: true)
      @publisher_2 = Publisher.create!(name: "Marvel", cost: 4.25, figurines_available: true)