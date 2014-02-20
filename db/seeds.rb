# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.destroy_all

5.times do 
  Item.create(title: "El Presidente", details: "deets", price: 100, pic: 'obama.jpg')
  Item.create(title: "El Artiste", details: "deets", price: 300, pic: 'van_gogh.jpg')
  Item.create(title: "El Jefe", details: "deets", price: 300, pic: 'wood_josh.jpg')
end