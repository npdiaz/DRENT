# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.last
Drone.create!(title:"JSON", description:"flies high", price: 22, user: user, brand: "brand", model: "model")
Drone.create!(title:"Mariezinator", description:"The badass", price: 243, user: user, brand: "brand", model: "model")
Drone.create!(title:"Nereus", description:"the spaniard", price: 175, user: user, brand: "brand", model: "model")
Drone.create!(title:"Agnesia", description:"doesnt forget footage", price: 360, user: user, brand: "brand", model: "model")
Drone.create!(title:"Mecha JSON 5000", description: "harry potter material", price: 2, user: user, brand: "brand", model: "model")
Drone.create!(title:"Da Vinci's Dream", description:"WWLDVD", price: 22, user: user, brand: "brand", model: "model")
Drone.create!(title:"KITT", description:"Hello, Michael", price: 243, user: user, brand: "brand", model: "model")
Drone.create!(title:"Rock 'Em Sock 'Em", description:"Your favorite childhood toy just got a lot better", price: 175, user: user, brand: "brand", model: "model")
Drone.create!(title:"HK-47", description:"Stuff nightmares are made of", price: 360, user: user, brand: "brand", model: "model")
Drone.create!(title:"IG-88", description: "Most advanced bounty hunter system in the galaxy", price: 2, user: user, brand: "brand", model: "model")
