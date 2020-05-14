# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

10.times do |i|
  item = Listing.new(
  #user: User.find(rand(1..User.all.length)),
  description: Faker::Food.description,
  title: Faker::Food.dish,
  price: [6, 10, 20, 50].sample,
  category_id: rand(1..5)
  )
  item.save!(validate: false)
  puts "Created #{i + 1} items.✅"
end


