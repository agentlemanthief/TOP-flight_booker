# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Seeding Airports...'

Airport.create(name: 'Aberdeen', airport_code: 'ABZ')
Airport.create(name: 'Edinburgh', airport_code: 'EDI')
Airport.create(name: 'Glasgow', airport_code: 'GLA')
Airport.create(name: 'London Gatwick', airport_code: 'LGW')
Airport.create(name: 'London Stanstead', airport_code: 'STN')
Airport.create(name: 'London Heathrow', airport_code: 'LHR')
Airport.create(name: 'Melbourne', airport_code: 'MEL')
Airport.create(name: 'New York', airport_code: 'NYC')
Airport.create(name: 'San Francisco', airport_code: 'SFO')
Airport.create(name: 'Colombia', airport_code: 'CLO')

puts 'Finished Seeding Airports!'


