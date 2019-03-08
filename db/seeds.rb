# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create! first_name: 'george', last_name: 'soros', birth_date:Date.today , telephone:'0476353904', email:'gsoros@gmail.com', password:'aaaaaa', country_id:'bulgaria'
Drone.create!(title:"JSON", description:"Flies high", price: 22, user: user, brand: "PARROT", size: "YUGE", weight: "15 kg", endurance: "4.5 hrs", city: "Brussels", model:  "DOBBY")
Drone.create!(title:"Mariezinator", description:"The badass", price: 243, user: user, brand: "PARROT", size: "YUGE", weight: "20 kg", endurance: "5 hrs", city: "Antwerp", model:  "GRIMWOLD")
Drone.create!(title:"Nereus", description:"The spaniard", price: 175, user: user, brand: "PARROT", size: "YUGE", weight: "38 kg", endurance: "4.5 hrs", city: "Gouda", model:  "BEAK")
Drone.create!(title:"Agnesia", description:"Doesnt forget footage", price: 360, user: user, brand: "DJI", size: "YUGE", weight: "22 kg", endurance: "6 hrs", city: "Ghent", model:  "DOBBY")
Drone.create!(title:"Mecha JSON 5000", description: "Yer a wizard, Harry!", price: 2, user: user, brand: "PARROT", size: "YUGE", weight: "15 kg", endurance: "4.5 hrs", city: "Brussels", model:  "IMAPARROT")
Drone.create!(title:"Da Vinci's Dream", description:"WWLDVD", price: 22, user: user, brand: "PARROT", size: "YUGE", weight: "55 kg", endurance: "3 hrs", city: "Brussels", model:  "CACAW")
Drone.create!(title:"KITT", description:"Hello, Michael", price: 243, user: user, brand: "PARROT", size: "YUGE", weight: "200 kg", endurance: "5 hrs", city: "Amsterdam", model:  "FRUIT LOOPS")
Drone.create!(title:"Rock 'Em Sock 'Em", description:"Your favorite childhood toy just got a lot better", price: 175, user: user, brand: "PARROT", size: "YUGE", weight: "42 kg", endurance: "4.5 hrs", city: "Brussels", model:  "FEATHERS")
Drone.create!(title:"HK-47", description:"Stuff nightmares are made of", price: 360, user: user, brand: "DJI", size: "YUGE", weight: "37 kg", endurance: "4.5 hrs", city: "Luxembourg", model:  "TOUCAN")
Drone.create!(title:"IG-88", description: "Most advanced bounty hunter system in the galaxy", price: 2, user: user, brand: "PARROT", size: "YUGE", weight: "88 kg", endurance: "4.5 hrs", city: "Rotterdam", model:  "NOTABIRD")
