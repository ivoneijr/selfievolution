# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

address = Address.new(street: 'Rua Padre Joao Batista Reus', number: 1877, complement: '01', state: 'RS', city: 'Porto Alegre', neighborhood: 'Tristeza', country: 'Brazil');
person = Person.new(address:address, name: 'Ivonei', phone:'51 91879477', webpage:'facebook/ivoneijr', sex:'M')
user = User.new(party:person, email:'ivoneijr@gmail.com', password:'ERROR')
pupil = Pupil.create(user:user)
