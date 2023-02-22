# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts "Cleaning database..."
# Restaurant.destroy_all

puts "Creating restaurants..."
#######
la_azulada = { name: "La Azulada", address: "Av Gral Indalecio Chenaut 1757, CABA, Argentina", phone_number: "4252525", category: "italian" }
las_cholas = { name: "Las Cholas", address: "Microcentro, CABA, Argentina", phone_number: "33333333", category: "japanese"}
la_hormiga = { name: "La Hormiga", address: "Lavalle 32, Coronel Suárez, Buenos Aires, Argentina", phone_number: "4254444", category: "japanese" }
la_colorada = { name: "La Colorada", address: "60 número 1038, La Plata, Buenos Aires, Argentina", phone_number: "11111", category: "french" }
las_cholitas = { name: "Las Cholitas", address: "pepe 180, Torino, Italy", phone_number: "585885", category: "french" }
la_cabrera = { name: "La Cabrera", address: "gugugugu 525252, Pekín, China", phone_number: "1111111444444", category: "chinese" }
#######
[la_azulada, las_cholas, la_hormiga, la_colorada, las_cholitas, la_cabrera].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
#######
puts "Finished!"
