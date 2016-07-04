# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name:'First', email:'first@example.com')
User.create(name:'Second', email:'second@example.com')
User.create(name:'Third', email:'third@example.com')
User.create(name:'Fourth', email:'fourth@example.com')
User.create(name:'Fifth', email:'fifth@example.com')

# not fully correct, using ID, but just want to seed...
Event.create(name: "First's party", location: "Edmonton", date:DateTime.now, user_id: 1)
Event.create(name: "Seconds's party", location: "Toronto", date:DateTime.now, user_id: 2)
Event.create(name: "Third's party", location: "Vancouver", date:DateTime.now, user_id: 3)
