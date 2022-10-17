# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@store = Store.create!(id: 1, name: "Dusty's Books", square_footage: 1100, online_sales: false)
@store_2 = Store.create!(id: 2, name: "Ava's Books", square_footage: 1500, online_sales: true)
@publisher = @store.publishers.create!(id: 1, name: "DC Comics", cost: 3.95, figurines_available: true)
@publisher_2 = @store.publishers.create!(id: 2, name: "Marvel", cost: 4.25, figurines_available: true)
@publisher_3 = @store.publishers.create!(id: 3, name: "DarkHorse", cost: 4.00, figurines_available: true)
@publisher_4 = @store_2.publishers.create!(id: 4, name: "Image", cost: 4.15, figurines_available: true)