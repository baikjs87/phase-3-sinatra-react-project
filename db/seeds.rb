puts "🌱 Seeding spices..."
Location.delete_all
ThingsToDo.delete_all
PlacesToGo.delete_all
Category.delete_all

Location.create(city: "New York", url:"https://images.unsplash.com/photo-1485871981521-5b1fd3805eee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80")
Location.create(city: "Washington D.C.", url:"https://images.unsplash.com/photo-1617581629397-a72507c3de9e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1744&q=80")
Location.create(city: "Seattle", url:"https://images.unsplash.com/photo-1502175353174-a7a70e73b362?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2252&q=80")
Location.create(city: "LA", url:"https://images.unsplash.com/photo-1534253893894-10d024888e49?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80")
Location.create(city: "Las Vegas", url:"https://images.unsplash.com/photo-1550109161-7262e652bf82?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2064&q=80")
Location.create(city: "Orlando", url:"https://images.unsplash.com/photo-1618945372420-2470ece5277c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80")

ThingsToDo.create(activity: "Eat New York pizza", location_id: 1, category_id: 4)
ThingsToDo.create(activity: "Visit MoMA", location_id: 1, category_id: 2)
ThingsToDo.create(activity: "Harbor Cruise", location_id: 1, category_id: 2)
ThingsToDo.create(activity: "Watch Musical", location_id: 1, category_id: 1)
ThingsToDo.create(activity: "Visit White House", location_id: 2, category_id: 2)
ThingsToDo.create(activity: "Visit Arts Museums", location_id: 2, category_id: 1)
ThingsToDo.create(activity: "Visit The Mall", location_id: 2, category_id: 2)
ThingsToDo.create(activity: "Drink Coffee", location_id: 3, category_id: 4)
ThingsToDo.create(activity: "Visit the Fish Market", location_id: 3, category_id: 2)
ThingsToDo.create(activity: "Surf", location_id: 4, category_id: 3)
ThingsToDo.create(activity: "Amusement Parts", location_id: 4, category_id: 1)
ThingsToDo.create(activity: "Sunbathe on the Beach", location_id: 4, category_id: 1)
ThingsToDo.create(activity: "Place Poker", location_id: 5, category_id: 3)
ThingsToDo.create(activity: "Gift Shopping", location_id: 5, category_id: 1)
ThingsToDo.create(activity: "Gamble", location_id: 5, category_id: 3)
ThingsToDo.create(activity: "Watch Shows", location_id: 5, category_id: 1)
ThingsToDo.create(activity: "Amusement Parks", location_id: 6, category_id: 1)
ThingsToDo.create(activity: "Play with Manatee", location_id: 6, category_id: 1)
ThingsToDo.create(activity: "Have Fun", location_id: 6, category_id: 1)

PlacesToGo.create(place:"Museum of Modern Arts", location_id: 1)
PlacesToGo.create(place:"Statue of Liberty", location_id: 1)
PlacesToGo.create(place:"SoHo", location_id: 1)
PlacesToGo.create(place:"Time Square", location_id: 1)
PlacesToGo.create(place:"Lincoln Memorial", location_id: 2)
PlacesToGo.create(place:"Smithsonian National Museum of Natual History", location_id: 2)
PlacesToGo.create(place:"U.S. Capitol", location_id: 2)
PlacesToGo.create(place:"The White House", location_id: 2)
PlacesToGo.create(place:"Space Needle", location_id: 3)
PlacesToGo.create(place:"The First Starbucks", location_id: 3)
PlacesToGo.create(place:"Pike Place Market", location_id: 3)
PlacesToGo.create(place:"University of Washington", location_id: 3)
PlacesToGo.create(place:"Disneyland", location_id: 4)
PlacesToGo.create(place:"San Jose", location_id: 4)
PlacesToGo.create(place:"Griffich Observatory", location_id: 4)
PlacesToGo.create(place:"Hollywood", location_id: 4)
PlacesToGo.create(place:"The Strip", location_id: 5)
PlacesToGo.create(place:"Grand Canyon", location_id: 5)
PlacesToGo.create(place:"Madame Tussauds", location_id: 5)
PlacesToGo.create(place:"Disney World", location_id: 6)
PlacesToGo.create(place:"Universal Studios", location_id: 6)
PlacesToGo.create(place:"Kennedy Space Center", location_id: 6)

Category.create(category:"Entertainment")
Category.create(category:"Siteseeing")
Category.create(category:"Sports")
Category.create(category:"Food")

# ThingsToDo.all.each do |thing|
#     10.times do
#         ThingsReview.create(user: Faker::Name.name, title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph, rating: rand(1..10), thingsToDo_id: thingsToDo.id)
#     end
# end
# PlacesToGo.all.each do |place|
#     10.times do
#         PlacesReview.create(user: Faker::Name.name, title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph, rating: rand(1..10), placesToGo_id: placesToGo.id)
#     end
# end

puts "✅ Done seeding!"
