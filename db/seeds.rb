require 'faker'

Vote.destroy_all
Decision.destroy_all
Town.destroy_all
User.destroy_all

puts 'Creating 4 real users & 10 fake users ...'

greg =  User.new({
  first_name: "Grégoire",
  last_name: "Courtois",
  email: "courtoisgregoire@gmail.com",
  is_town_admin: false,
  password: 'topsecret',
  password_confirmation: 'topsecret'
})

greg.remote_photo_url = "https://avatars2.githubusercontent.com/u/27558438"
greg.save!


alki = User.new({
  first_name: "Alki",
  last_name: "Delichatsios",
  email: "alkidel@gmail.com",
  is_town_admin: true,
  password: 'topsecret',
  password_confirmation: 'topsecret'
})
alki.remote_photo_url = "https://avatars3.githubusercontent.com/u/6272607"
alki.save!

pierre = User.new({
  first_name: "Pierre",
  last_name: "Lestang",
  email: "plestang@gmail.com",
  is_town_admin: false,
  password: 'topsecret',
  password_confirmation: 'topsecret'
})
pierre.remote_photo_url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/tmuwtd66xwga6yfafgpy.jpg"
pierre.save!

mathieu = User.new({
  first_name: "Mathieu",
  last_name: "Deltort",
  email: "mathieu.deltort@gmail.com",
  is_town_admin: true,
  password: 'topsecret',
  password_confirmation: 'topsecret'
})
mathieu.remote_photo_url = "https://avatars2.githubusercontent.com/u/45971412"
mathieu.save!


10.times do
  pwd = Faker::Lorem.characters(10)
  user = User.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    is_town_admin: false,
    password: pwd,
    password_confirmation: pwd
  )
  user.remote_photo_url = "http://kitt.lewagon.com/placeholder/users/ssaunier"
  user.save!
end

puts 'Finished creating users!'


town = Town.create(name: 'Paris', user_id: alki.id)


puts "Created #{User.count} users"

DECISIONS_PAST = [Date.new(2019, 02, 12), Date.new(2019, 01, 15), Date.new(2018, 12, 11), Date.new(2018, 11, 13), Date.new(2018, 10, 16)]
# DECISIONS_PAST_RESULT = [1,1,1,1,2,2,3]
PHOTOS = %w(aaron-burden-60068-unsplash cindy-bonfini-hotlosz-354736-unsplash fancycrave-371079-unsplash nick-karvounis-451562-unsplash maxine-ficheux-1290089-unsplash christian-joudrey-90289-unsplash)
VOTES_RESULT = []


puts 'Creating 10 fake decisions for next city council...'
5.times do
  ran_num = rand(0..5)
  url = "https://res.cloudinary.com/alkidel/image/upload/v1551176533/votrevote/#{PHOTOS[ran_num]}.jpg"
  decision = Decision.new(
    title: Faker::Lorem.sentence(5),
    category: Decision.categories.keys.sample,
    description: Faker::Lorem.paragraph(3, true),
    result: 0,
    minutes: "",
    council_date: Date.new(2019, 03, 12),
    town_id: Town.first.id
  )
  decision.remote_photo_url = url
  decision.save!
end

puts 'Creating 20 fake decisions for last 5 city councils...'

20.times do
  ran_num = rand(0..5)
  url = "https://res.cloudinary.com/alkidel/image/upload/v1551176533/votrevote/#{PHOTOS[ran_num]}.jpg"
  decision = Decision.new(
    title: Faker::Lorem.sentence(5),
    category: Decision.categories.keys.sample,
    description: Faker::Lorem.paragraph(3, true),
    accepted_votes: rand(6..10),
    rejected_votes: rand(5..10),
    deferred_votes: rand(2..10),
    minutes: Faker::Lorem.paragraph(10, true),
    council_date: DECISIONS_PAST.sample,
    town_id: Town.first.id
  )
  decision.add_results(decision.accepted_votes, decision.rejected_votes, decision.deferred_votes)
  decision.remote_photo_url = url
  decision.save!

  end

  puts 'Adding fake votes for each decisions'
  Decision.past.each do |decision|
    User.all.each do |user|
    vote = user.votes.where(decision_id: decision.id)
    vote[0].result = rand(0..2)
    vote[0].save!
    end
  end




puts 'Finished!'
