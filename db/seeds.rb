require 'faker'

Decision.destroy_all
Vote.destroy_all
User.destroy_all

greg =  User.new({
  first_name: "Grégoire",
  last_name: "Courtois",
  email: "courtoisgregoire@gmail.com",
  is_town_admin: false,
  password: 'topsecret',
  password_confirmation: 'topsecret'
})

greg.save


alki = User.new({
  first_name: "Alki",
  last_name: "Delichatsios",
  email: "alkidel@gmail.com",
  is_town_admin: true,
  password: 'topsecret',
  password_confirmation: 'topsecret'
})

alki.save

pierre = User.new({
  first_name: "Pierre",
  last_name: "Lestang",
  email: "plestang@gmail.com",
  is_town_admin: false,
  password: 'topsecret',
  password_confirmation: 'topsecret'
})
pierre.remote_photo_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/tmuwtd66xwga6yfafgpy.jpg"
pierre.save

mathieu = User.new({
  first_name: "Mathieu",
  last_name: "Deltort",
  email: "mathieu.deltort@gmail.com",
  is_town_admin: true,
  password: 'topsecret',
  password_confirmation: 'topsecret'
})
mathieu.save


puts "Created #{User.count} users"

DECISIONS_CATEGORY = ["Education", "Environment", "Construction", "Commerce", "Transport", "Waste Management"]
DECISIONS_PAST = [Date.new(2019, 02, 12), Date.new(2019, 01, 15), Date.new(2018, 12, 11), Date.new(2018, 11, 13), Date.new(2018, 10, 16)]

puts 'Creating 20 fake decisions for next city council...'
20.times do
  decision = Decision.new(
    title: Faker::Lorem.sentence(5),
    category: DECISIONS_CATEGORY.sample,
    description: Faker::Lorem.paragraphs(2, true),
    result: 1,
    minutes: "",
    council_date: Date.new(2019, 03, 12),
    town_id: 1,
    photo:
  )
  decision.save!
end
puts 'Finished!'


puts 'Creating 100 fake decisions for past 5 city councils...'
100.times do
  decision = Decision.new(
    title: Faker::Lorem.sentence(5),
    category: DECISIONS_CATEGORY.sample,
    description: Faker::Lorem.paragraphs(2, true),
    result: 1,
    minutes: "",
    council_date: Date.new(2019, 03, 12),
    town_id: 1,
    photo:
  )
  decision.save!
end
puts 'Finished!'







USERS = [greg, mathieu, alki, pierre]
PHOTOS = %w(pexels-photo-533595 pexels-photo-531474 pexels-photo-570987 pexels-photo-296278 pexels-photo-382167 pexels-photo-296242 pexels-photo-275637 pexels-photo-351774 pexels-photo-273886 pexels-photo-244517 pexels-photo-218999 pexels-photo-1655166 ship-boat-lake-garda-italy pexels-photo-209978 pexels-photo-127160 sailing-ship-vessel-boat-sea-37859 pexels-photo-1586795 sunrise-phu-quoc-island-ocean pexels-photo-1295036 luxury-yacht-boat-speed-water-163236 light-sunset-water-boat pexels-photo-675764 pexels-photo-1555313 pexels-photo-1007836 Boat-30 Boat-28 Boat-29 Boat-26 Boat-27 Boat-24 Boat-25 Boat-22 Boat-23 Boat-20 Boat-19 Boat-21 Boat-15 Boat-18 Boat-16 Boat-17 Boat-11 Boat-14 Boat-09 Boat-12 Boat-08 Boat-10 Boat-13 Boat-66 Boat-69 Boat-68 Boat-65 Boat-67 Boat-64 Boat-58 Boat-62 Boat-63 Boat-61 Boat-60 Boat-59 Boat-56 Boat-57 Boat-55 Boat-53 Boat-54 Boat-49 Boat-52 Boat-51 Boat-48 Boat-50 Boat-47 Boat-43 Boat-42 Boat-45 Boat-44 Boat-41 Boat-46 Boat-40 Boat-06 Boat-37 Boat-38 Boat-39 Boat-04 Boat-36 Boat-35 Boat-34 Boat-33 Boat-01 Boat-03 Boat-32 Boat-02 Boat-05 Boat-31)
ADDRESS = ["Ajaccio","Antibes","Arcachon","Argelès-sur-Mer","Ars-en-Ré","Arzal","Arzon","Bandol","Banyuls-sur-Mer","Bastia","Beaulieu-sur-Mer","Bénodet","Bormes-les-Mimosas","Boulogne-sur-Mer","Brest","Camaret-sur-Mer","Canet-en-Roussillon","Cap d'Agde","Capbreton","Carnon","Carry-le-Rouet","Cavalaire","Cerbère","Cherbourg","Cogolin","Collioure","Courseulles-sur-Mer","Crozon-Morgat","Deauville","Dieppe","Dives-sur-Mer","Dunkerque","Etaples-sur-Mer","Fécamp","Fos-sur-Mer","Fréjus","Frontignan","Golfe-Juan","Granville","Gravelines","Gruissan","Hendaye","Hyeres","Île d'Yeu","Juan-les-Pins","La Baule et Le Pouliguen","La Ciotat","La Forêt-Fouesnant","La Grande-Motte","La Londe-les-Maures","La Roche-Bernard","La Rochelle","La Trinité-sur-Mer","La Turballe","Le Barcarès","Le Brusc","Le Croisic","Le Grau-du-Roi","Le Havre","Le Lavandou","Le Verdon-sur-Mer","Les Issambres","Les Sables-d'Olonne","Lézardrieux","Loctudy","Lorient","Macinaggio","Mandelieu-la-Napoule","Marseille","Menton","Monaco","Narbonne-Plage","Nice","Ouistreham","Palavas-les-Flots","Perros-Guirec","Piriac-sur-Mer","Pléneuf-Val-André","Pornic","Pornichet","Porquerolles","Port Vendres","Port-Grimaud","Port-Leucate","Port-Saint-Louis-du-Rhône","Quiberon","Royan","Saint-Cast-le-Guildo","Saint-Cyprien","Saint-Cyr-sur-Mer","Saint-Denis-d'Oléron","Saint-Florent","Saint-Gilles-Croix-de-Vie","Saint-Jean-Cap-Ferrat","Saint-Laurent-du-Var","Saint-Malo","Saint-Mandrier","Saint-Pierre-les-Embiez","Saint-Quay-Portrieux","Saint-Raphaël","Saint-Tropez","Saint-Vaast-la-Hougue","Saint-Valery-en-Caux","Sainte-Marie-de-la-Mer","Sainte-Marine","Sainte-Maxime","Sanary","Sausset-les-Pins","Sète","Talmont-Saint-Hilaire","Toulon","Trébeurden","Villefranche-sur-Mer"]
BOATS_NAME= [ "Sun Rise 34", "Elan 340","Patago 39","Dufour 445 Grand Large","Fifty 24", "Corsair 28","sun odyssey 349"]
  # resource_type = "image"
  # type = "upload"
  # version = 1234567890
  # public_id = "g6u3tb5embqi6jvigxph"
  # format = "jpg"
  # signature = Cloudinary::Utils.api_sign_request({:public_id=>public_id,
  # :version=>version}, Cloudinary.config.api_secret)

# PHOTO = "#{resource_type}/#{type}/v#{version}/#{public_id}.#{format}## .
#   {signature}"

PHOTOS.each do |image|
  url = "https://res.cloudinary.com/dsiephejy/image/upload/v1550594036/#{image}.jpg"
  boat = Boat.new({
    price_per_day: rand(80...500),
    name: BOATS_NAME.sample,
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam nulla, modi odio. Rerum provident repellat fugit ducimus sequi nesciunt, eos aliquid repudiandae et, unde sint magni adipisci, itaque atque non.",
    category: BOATS_CATEGORY.sample,
    user_id: USERS.sample.id,
    cabin:rand(0...6),
    capacity:rand(2...15),
    address:ADDRESS.sample,
    length:rand(2...20),
  })
  boat.remote_photo_url = url
  boat.remote_photo_2_url = "https://res.cloudinary.com/dsiephejy/image/upload/v1550594036/#{PHOTOS.sample}.jpg"
  boat.remote_photo_3_url = "https://res.cloudinary.com/dsiephejy/image/upload/v1550594036/#{PHOTOS.sample}.jpg"
  boat.save
end

puts "Created #{Boat.count} boats"

