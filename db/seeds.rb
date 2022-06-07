require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up database"
Company.destroy_all
puts "database is clean"

puts "Creating companies"
10.times do
  company = Company.create!(
    neme: Faker::Company.name,
    address: Faker::Address.street_address,
    equety: 500000
    net_inc: 100000
    activity: Faker::Company.type,
    description: Faker::Company.industry,
    max_quotas: 100,
    price_quotum: rand(1..5)
  )
  puts "company #{company.id} is created!"
end

puts "Done!"
