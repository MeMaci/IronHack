# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
contact1 = Contact.create(name: "Arda", address: "Florida", phone: "007", email: "a@a.com")
contact2 = Contact.create(name: "Mel", address: "Florida", phone: "008", email: "a@a.com")
contact3 = Contact.create(name: "Javi", address: "Florida", phone: "009", email: "a@a.com")

contact = [contact1, contact2, contact3]

