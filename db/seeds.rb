# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

person = Person.new(name: 'Ivonei', phone:'51 91879477', webpage:'facebook/ivoneijr', sex:'M')
user = User.new(party:person, email:'ivoneijr@gmail.com', password:'ERROR')
pupil = Pupil.create(user:user)

