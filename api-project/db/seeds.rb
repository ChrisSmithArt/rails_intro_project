# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "csv"

# walkway_csv = Rails.root.join('db/Walkways_20240626.csv')
# walkway_data = File.read(walkway_csv)
# walkways = CSV.parse(walkway_data, headers: true, encoding: 'utf-8')

# walkways.each do |walkway|
#   Walkway.create(
#     walkway_id: walkway['ID'].to_i,
#     length: walkway['Length'].to_d,
#     width: walkway['Width'].to_d,
#     location: walkway['Location'],
#   )
# end

# park_csv = Rails.root.join('db/Parks_and_Open_Space_20240626.csv')
# park_data = File.read(park_csv)
# parks = CSV.parse(park_data, headers: true, encoding: 'utf-8')

# parks.each do |park|
#   Park.create(
#     park_id: park['Park ID'].to_i,
#     name: park['Park Name'],
#     address: park['Address'],
#     description: park['Location Description'],
#     category: park['Park Category'],
#     totalarea: park['Total Area in Hectares'].to_d,
#     location: park['Location'],
#   )
# end

# cycling_csv = Rails.root.join('db/Cycling_Network_20240626.csv')
# cycling_data = File.read(cycling_csv)
# cyclings = CSV.parse(cycling_data, headers: true, encoding: 'utf-8')

# cyclings.each do |cycling|
#   Cycling.create(
#     cycling_id: cycling['ID'],
#     path_type: cycling['Infrastructure Type'],
#     name: cycling['Infrastructure Name'],
#     roadlocation: cycling['Road Location'],
#     length: cycling['Length'].to_d,
#     location: cycling['Location'],
#   )
# end

parkasset_csv = Rails.root.join('db/Park_Asset_Inventory_20240626.csv')
parkasset_data = File.read(parkasset_csv)
parkassets = CSV.parse(parkasset_data, headers: true, encoding: 'utf-8')

parkassets.each do |parkasset|
  ParkAsset.create(
    id: parkasset['Asset ID'].to_i,
    park_id: parkasset['Park ID'].to_i,
    assetclass: parkasset['Asset Class'],
    assetsize: parkasset['Asset Size'],
    assettype: parkasset['Asset Type'],
  )
end
