# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  Store.create([{
    codename: 'MTY0' + rand(1..99).to_s, 
    address: Faker::Address.street_address, 
    phone: Faker::PhoneNumber.cell_phone
    }])
end

10.times do
	Book.create([{
    title: Faker::Book.title,
    author: Faker::Book.author,
    year: rand(1440..2019)
  }])
end