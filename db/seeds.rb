# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.destroy_all

2.times do 
  Item.create(title: "Lilypads", details: "deets", price: 100, pic: 'SimoneAnne-6292.jpg', artist: 'Mike Carmody')
  Item.create(title: "Beach Glass", details: "deets", price: 300, pic: 'SimoneAnne-1862.jpg', artist: 'Mike Carmody')
  Item.create(title: "Surfer Dude", details: "deets", price: 300, pic: 'SimoneAnne-8689.jpg', artist: 'Mike Carmody')
  Item.create(title: "Sunshine", details: "deets", price: 300, pic: 'SimoneAnne-1834.jpg', artist: 'Mike Carmody')
  Item.create(title: "Gondola Ride", details: "deets", price: 300, pic: 'SimoneAnne-0180.jpg', artist: 'Mike Carmody')
  Item.create(title: "Another Beach", details: "deets", price: 300, pic: 'SimoneAnne-1871.jpg', artist: 'Mike Carmody')
  Item.create(title: "Country Road", details: "deets", price: 300, pic: 'SimoneAnne-8325.jpg', artist: 'Mike Carmody')
  Item.create(title: "Pathways", details: "deets", price: 300, pic: 'SimoneAnne-6289.jpg', artist: 'Mike Carmody')
end