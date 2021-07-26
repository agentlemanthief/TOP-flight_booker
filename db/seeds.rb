# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Deleting Previous Entries...'

Airport.delete_all
Flight.delete_all

puts 'Deleted Previous Entries!'

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

puts 'Seeding Flights...'

Flight.create(origin: 'SFO', destination: 'NYC', departure: '2021-07-21 12:00', arrival: '2021-07-21 15:00', from_airport_id: '9', to_airport_id: '8')
Flight.create(origin: 'SFO', destination: 'NYC', departure: '2021-07-29 12:00', arrival: '2021-07-29 15:00', from_airport_id: '9', to_airport_id: '8')
Flight.create(origin: 'SFO', destination: 'NYC', departure: '2021-08-03 12:00', arrival: '2021-08-03 15:00', from_airport_id: '9', to_airport_id: '8')
Flight.create(origin: 'SFO', destination: 'NYC', departure: '2021-08-21 12:00', arrival: '2021-08-21 15:00', from_airport_id: '9', to_airport_id: '8')
Flight.create(origin: 'SFO', destination: 'NYC', departure: '2021-09-05 12:00', arrival: '2021-09-05 15:00', from_airport_id: '9', to_airport_id: '8')
Flight.create(origin: 'NYC', destination: 'SFO', departure: '2021-07-25 12:00', arrival: '2021-07-25 14:30', from_airport_id: '8', to_airport_id: '9')
Flight.create(origin: 'NYC', destination: 'SFO', departure: '2021-07-31 12:00', arrival: '2021-07-31 14:30', from_airport_id: '8', to_airport_id: '9')
Flight.create(origin: 'NYC', destination: 'SFO', departure: '2021-08-22 12:00', arrival: '2021-08-22 14:30', from_airport_id: '8', to_airport_id: '9')
Flight.create(origin: 'NYC', destination: 'SFO', departure: '2021-08-30 12:00', arrival: '2021-08-30 14:30', from_airport_id: '8', to_airport_id: '9')
Flight.create(origin: 'NYC', destination: 'SFO', departure: '2021-09-11 12:00', arrival: '2021-09-11 14:30', from_airport_id: '8', to_airport_id: '9')

puts 'Finished Seeding Flights!'
