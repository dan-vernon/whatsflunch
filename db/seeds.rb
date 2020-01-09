require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


AdminUser.create_with(password: 'password', password_confirmation: 'password').find_or_create_by!(email: 'admin@example.com') if Rails.env.development?

User.create!(
    email: Faker::Name.name,
    name: Faker::Internet.free_email,
    dob: Date.new(1980,1,1)
)