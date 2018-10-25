# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

rng = Random.new

 10.times do
   user = Doctor.create!(first_name: Faker::Name.name, last_name: Faker::Food.dish, speciality: Faker::Lorem.sentence, postal_code: Faker::Number.number(5))
 end

 10.times do
   user2 = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
 end

10.times do
  comment = Appointment.create!(date: Faker::Date.forward(23), doctor_id: Doctor.all.ids.sample, patient_id: Patient.all.ids.sample)
end

# 5.times do
#   catego = Categorie.create!(name: Faker::Games::Pokemon.move)
# end
# 10.times do
#     article = Post.create!(title: Faker::Games::WorldOfWarcraft.hero, content: Faker::Games::WorldOfWarcraft.quote, user_id: User.all.ids.sample, categorie_id: Category.all.ids.sample)
# end
# 15.times do
#   comment = Comment.create!(content: Faker::ChuckNorris.fact, user_id: User.all.ids.sample, post_id: Article.all.ids.sample)
#   like = Like.create!(user_id: User.all.ids.sample, post_id: Article.all.ids.sample)
# end