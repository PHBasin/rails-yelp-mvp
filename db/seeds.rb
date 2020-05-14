# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
la_cafe_du_theatre = { name: 'Le Café du Théatre', address: 'Boulevard Pierre Segelle, 45000 Orléans', category: 'french', phone_number: '02 38 54 36 74' }
le_tonnelier = { name: 'Le Tonnelier', address: '5 Rue d\'Alsace Lorraine, 45000 Orléans', category: 'french', phone_number: '02 38 62 89 14' }
l_hibiscus = { name: 'L\'Hibiscus', address: '175 Rue de Bourgogne, 45000 Orléans', category: 'french', phone_number: '02 38 72 74 11' }
la_dariole = { name: 'La Dariole', address: '25 Rue Etienne Dolet, 45000 Orléans', category: 'french', phone_number: '02 38 77 26 67' }
les_pieds_dans_le_plat = { name: 'Les pieds dans le plat', address: '231 Rue de Bourgogne, 45000 Orléans', category: 'french', phone_number: '02 38 42 09 11' }

[ la_cafe_du_theatre, le_tonnelier, l_hibiscus, la_dariole, les_pieds_dans_le_plat ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
