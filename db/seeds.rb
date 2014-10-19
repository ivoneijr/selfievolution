# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

address = Address.new(street: 'Rua Padre Joao Batista Reus',
                      number: 1877,
                      complement: '01',
                      state: 'RS',
                      city: 'Porto Alegre',
                      neighborhood: 'Tristeza',
                      country: 'Brazil');

person = Person.new(address:address,
                    name: 'Ivonei',
                    phone:'51 91879477',
                    webpage:'www.mypage.com/ivoneijr',
                    sex:'M')

user = User.new(party:person,
                email:'ivoneijr@gmail.com',
                password:'ERROR')

pupil = Pupil.create(user:user)







addressCoach = Address.new(street: 'Rua Otto',
                            number: 117,
                            complement: '101',
                            state: 'RS',
                            city: 'Porto Alegre',
                            neighborhood: 'Tristeza',
                            country: 'Brazil');

personCoach = Person.new(address:addressCoach,
                          name: 'Dereck',
                          phone:'51 91879477',
                          webpage:'facebook/dereckpersonal',
                          sex:'M')

userCoach = User.new(party:personCoach,
                      email:'coachDereck@gmail.com',
                      password:'ERROR' )

coach = Coach.create(user: userCoach)
coach.pupils<<pupil



