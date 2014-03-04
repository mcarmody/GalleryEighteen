
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.destroy_all
User.destroy_all

2.times do 
  Item.create(title: "Lilypads", details: "deets", price: 100, pic: 'SimoneAnne-6292.jpg', user_id: 1)
  Item.create(title: "Beach Glass", details: "deets", price: 300, pic: 'SimoneAnne-1862.jpg', user_id: 1)
  Item.create(title: "Surfer Dude", details: "deets", price: 300, pic: 'SimoneAnne-8689.jpg', user_id: 1)
  Item.create(title: "Sunshine", details: "deets", price: 300, pic: 'SimoneAnne-1834.jpg', user_id: 2)
  Item.create(title: "Gondola Ride", details: "deets", price: 300, pic: 'SimoneAnne-0180.jpg', user_id: 2)
  Item.create(title: "Another Beach", details: "deets", price: 300, pic: 'SimoneAnne-1871.jpg', user_id: 2)
  Item.create(title: "Country Road", details: "deets", price: 300, pic: 'SimoneAnne-8325.jpg', user_id: 3)
  Item.create(title: "Pathways", details: "deets", price: 300, pic: 'SimoneAnne-6289.jpg', user_id: 3)
end

User.destroy_all

User.create(name: 'Mike Carmody', password: 'password', email: 'mcarmody2013@gmail.com', school: '42.047418, -87.700815', category: 'Photography', pic: 'profile.jpg', uid: 1)
User.create(name: 'Josh Wood', password: 'password', email: 'sample@example.com', school: '42.095219, -87.717810', category: 'Architecture', pic: 'wood_josh.jpg', uid: 2)
User.create(name: 'Barack Obama', password: 'password', email: 'sample2@example.com', school: '42.095219, -87.717810', category: 'Painting', pic: 'obama.jpg', uid: 3)