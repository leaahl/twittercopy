# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'ffaker'

User.create(username:  "admin",
             email: "admin@gmail.com",
             password: "11111111",
             password_confirmation: "11111111",
             admin: true)

99.times do |n|
  User.create(username:  FFaker::Internet.user_name,
               email: "ex-#{n+1}@railstutorial.org",
               password: "xxxxxxxx",
               password_confirmation: "xxxxxxxx")
end

users = User.order(:created_at).take(6)
50.times do
  content = FFaker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end
