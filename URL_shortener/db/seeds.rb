# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Url.create!(original_url: "https://google.com" , shortlink: "link1")
Url.create!(original_url: "https://yahoo.com" , shortlink: "link2")
Url.create!(original_url: "https://github.com" , shortlink: "link3")