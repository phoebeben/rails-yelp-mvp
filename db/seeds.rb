# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "italian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
gloria = {name: "Gloria", address: "54-56 Great Eastern St, London EC2A 3QR", category: "french"}
zizi =  {name: "Zizi", address: "5 Twickenham High St, Twickenham TW1 4LG", category: "italian"}
wagamama = {name: "Wagamama", address: "5 Richmond Rd, Richmond, RT4 5FR", category: "japanese"}

[dishoom, pizza_east, gloria, zizi, wagamama].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
