# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Create users
user_one = User.create(email: 'test1@box.com', password: 'password')
user_two = User.create(email: 'test2@box.com', password: 'password')
puts "Creating new test subjects"


10.times do |i| # This should be above User generation
  location = Location.new(
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: Faker::Address.country
  )
  location.save!
  puts "Created #{i + 1} locations.✅"
end

5.times do |i|
  category = Category.new(
    name: Faker::Job.seniority
  )
  category.save!
  puts "Created #{i + 1} categories.✅"
end

5.times do |i|
  item = Listing.new(
  #user: User.find(rand(1..User.all.length)),
  description: Faker::Food.description,
  title: Faker::Food.dish,
  deposit: [10000,20000,30000].sample,
  category_id: rand(1..5),
  user_id: [1,2].sample,
  sold: false
  )
  item.save!(validate: false)
  puts "Created #{i + 1} items.✅"
end


