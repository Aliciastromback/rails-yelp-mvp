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
Restaurant.create!({name: "Tim Raue", address: "Berlin Mitte", phone_number: "13565465642", category: "japanese"})
Restaurant.create!({name: "Charlotte", address: "Checkpoint Charlie", phone_number: "15675465542", category: "belgian"})
Restaurant.create!({name: "McDonalds", address: "Berlin Hauptbahnhof", phone_number: "13225675212", category: "french"})
Restaurant.create!({name: "Pablos Pizza", address: "Berlin Mitte", phone_number: "14565437767", category: "italian"})
Restaurant.create!({name: "Sushi Yama", address: "Fredrichshein", phone_number: "16765335192", category: "chinese"})
