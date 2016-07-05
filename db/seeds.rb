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
User.first.events.create(name: "First's party", location: "Edmonton", date:DateTime.now-1, description: "Happy birthday to meeeeee!")
User.second.events.create(name: "Seconds's party", location: "Toronto", date:DateTime.now+365, description: "I'm having a surprise party for my friend.")
User.third.events.create(name: "Third's party", location: "Vancouver", date:DateTime.now+365, description: "Our coworker, Sue, is going on mat leave, so we will be having a dinner for her.  Gifts are not necessary but if you want to pitch in a few bucks, Sam is going to be buying a card and also a gift card for the baby store.")


EventAttending.create(attendee_id: 1, event_id: 1)
