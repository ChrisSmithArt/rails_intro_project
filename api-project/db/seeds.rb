# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


walkway_csv = Rails.root.join('db/Walkways_20240626.csv')
walkway_data = File.read(walkway_csv)
walkways = CSV.parse(walkway_data, headers: true, encoding: 'utf-8')

walkways.each do |walkway|
  Product.create(
    id: walkway['ID'],
    length: walkway['Length'],
    width: walkway['Width'],
    location: walkway['Location'],
  )
end

park_csv = Rails.root.join('db/Parks_and_Open_Space_20240626.csv')
park_data = File.read(park_csv)
parks = CSV.parse(park_data, headers: true, encoding: 'utf-8')

parks.each do |park|
  Product.create(
    id: park['Park ID'],
    name: park['Park Name'],
    address: park['Address'],
    description: park['Location Description'],
    category: park['Park Category'],
    totalarea: park['Total Area in Hectares'],
    location: park['Location'],
  )
end

cycling_csv = Rails.root.join('db/Cycling_Network_20240626.csv')
cycling_data = File.read(cycling_csv)
cyclings = CSV.parse(cycling_data, headers: true, encoding: 'utf-8')

cyclings.each do |cycling|
  Product.create(
    id: cycling['cycling ID'],
    name: cycling['cycling Name'],
    address: cycling['Address'],
    description: cycling['Location Description'],
    category: cycling['cycling Category'],
    totalarea: cycling['Total Area in Hectares'],
    location: cycling['Location'],
  )
end
