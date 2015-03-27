# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

5.times do
  u = User.new(
    email: Faker::Internet.email,
    name: Faker::Name.name,
    password: Faker::Internet.password
  )
  u.skip_confirmation!
  u.save
end

users = User.all

20.times do
  Item.create(
    name:  Faker::Company.catch_phrase,
    user:  users.sample
  )
end
