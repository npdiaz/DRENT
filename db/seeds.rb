# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.last
Drone.create!(title:"Json", description:"flies high", price: 22, user: user)
Drone.create!(title:"Mariezator", description:"The badass", price: 243, user: user)
Drone.create!(title:"Nereus", description:"the spaniard", price: 175, user: user)
Drone.create!(title:"Agnesia", description:"doesnt forget footage", price: 360, user: user)
Drone.create!(title:"Mecha JASON 5000", description: "harry potter material", price: 2, user: user)
