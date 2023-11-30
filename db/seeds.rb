# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  image_url: 'https://prod-saint-gobain-fr.content.saint-gobain.io/sites/saint-gobain.fr/files/2022-04/maison-contemporaine-la-maison-saint-gobain01.jpg'
)
Flat.create!(
  name: 'Une belle room',
  address: 'Avenue de l/cole',
  description: 'Un bon sejour OKLM',
  price_per_night: 25,
  number_of_guests: 2,
  image_url:'https://www.depreux-construction.com/wp-content/uploads/2022/11/maisons-modernes-modeles-plans-amenagement.jpg'
)
Flat.create!(
  name: 'La BatRoom',
  address: 'Gotham city',
  description: 'Pour les gens bresom',
  price_per_night: 300,
  number_of_guests: 7,
  image_url:'https://i.ebayimg.com/images/g/SNgAAOSwjh1hr97F/s-l1600.jpg'
)
Flat.create!(
  name: 'MusicStudio',
  address: 'MeloGangx',
  description: 'RDV Vendredi',
  price_per_night: 1250,
  number_of_guests: 2,
  image_url: "https://p.turbosquid.com/ts-thumb/dS/RRisMD/ZNgsUquN/1/png/1552579740/600x600/fit_q87/7fcfdfa28a8dfa60d936d6d8b32ba5ce7b41fe01/1.jpg"
)

if Flat.last&.image_url.present?
  puts 'Seed exécuté avec succès.'
else
  puts "Erreur lors de l'exécution du seed"
end
