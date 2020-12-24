# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Generate Contacts
user_id = User.last.id
100.times do |_|
  Contact.create(name: Faker::Name.name, email: Faker::Internet.email, phone: Faker::Number.number(digits: 10), description: Faker::Lorem.sentences, user_id: user_id)
end