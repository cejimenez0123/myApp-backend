# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'byebug'
require 'securerandom'

10.times do 
   
    User.create(id: SecureRandom.hex(6), name: Faker::Omniauth.twitter[:info][:name], username: Faker::Internet.username(specifier: 5..8), password: "joe" )
end


