require 'faker'

Vote.destroy_all
Decision.destroy_all
Town.destroy_all
User.destroy_all

puts 'Creating 4 real users & 100 fake users ...'

greg =  User.new({
  first_name: "Grégoire",
  last_name: "Courtois",
  email: "courtoisgregoire@gmail.com",
  is_town_admin: false,
  password: 'topsecret',
  password_confirmation: 'topsecret'
})

greg.save!


alki = User.new({
  first_name: "Alki",
  last_name: "Delichatsios",
  email: "alkidel@gmail.com",
  is_town_admin: true,
  password: 'topsecret',
  password_confirmation: 'topsecret'
})

alki.save!

pierre = User.new({
  first_name: "Pierre",
  last_name: "Lestang",
  email: "plestang@gmail.com",
  is_town_admin: false,
  password: 'topsecret',
  password_confirmation: 'topsecret'
})
pierre.save!

mathieu = User.new({
  first_name: "Mathieu",
  last_name: "Deltort",
  email: "mathieu.deltort@gmail.com",
  is_town_admin: true,
  password: 'topsecret',
  password_confirmation: 'topsecret'
})
mathieu.save!


100.times do
  pwd = Faker::Lorem.characters(10)
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    is_town_admin: false,
    password: pwd,
    password_confirmation: pwd
  )
  user.save!
end

puts 'Finished creating users!'


town = Town.create(name: 'Paris', user_id: alki.id)


puts "Created #{User.count} users"

DECISIONS_CATEGORY = ["Education", "Environment", "Works", "Commerce", "Transport", "Waste"]
DECISIONS_PAST = [Date.new(2019, 02, 12), Date.new(2019, 01, 15), Date.new(2018, 12, 11), Date.new(2018, 11, 13), Date.new(2018, 10, 16)]
DECISIONS_PAST_RESULT = [1,1,1,2,2,2,3]
PHOTOS = %w(aaron-burden-60068-unsplash rawpixel-744409-unsplash roman-mager-59976-unsplash christian-joudrey-90289-unsplash david-pennington-562462-unsplash cindy-bonfini-hotlosz-354736-unsplash fancycrave-371079-unsplash)
VOTES_NUMBER = rand(50..500)
VOTES_RESULT = []

puts 'Creating 20 fake decisions for next city council...'
20.times do
  url = "https://res.cloudinary.com/alkidel/image/upload/v1551176533/votrevote/#{PHOTOS.sample}.jpg"
  decision = Decision.new(
    title: Faker::Lorem.sentence(5),
    category: DECISIONS_CATEGORY.sample,
    description: Faker::Lorem.paragraph(2, true),
    result: 0,
    minutes: "",
    council_date: Date.new(2019, 03, 12),
    town_id: Town.first.id
  )
  decision.remote_photo_url = url
  decision.save!
  User.all.each do |user|
      vote = Vote.new(
        user_id: user.id,
        decision_id: decision.id,
        result: rand(0..3)
        )
      vote.save!
    end
end

puts 'Creating 100 fake decisions for last 5 city councils...'

100.times do
  url = "https://res.cloudinary.com/alkidel/image/upload/v1551176533/votrevote/#{PHOTOS.sample}.jpg"
  decision = Decision.new(
    title: Faker::Lorem.sentence(5),
    category: DECISIONS_CATEGORY.sample,
    description: Faker::Lorem.paragraph(2, true),
    result: DECISIONS_PAST_RESULT.sample,
    minutes: Faker::Lorem.paragraphs(1, true),
    council_date: DECISIONS_PAST.sample,
    town_id: Town.first.id
  )
  decision.remote_photo_url = url
  decision.save!
  User.all.each do |user|
      vote = Vote.new(
        user_id: user.id,
        decision_id: decision.id,
        result: rand(0..3)
        )
      vote.save!
    end
end

puts 'Finished!'
