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
Booking.delete_all
Passenger.delete_all

puts 'Deleted Previous Entries!'

puts 'Seeding Airports...'

Airport.create(name: 'Edinburgh', airport_code: 'EDI')
Airport.create(name: 'London Gatwick', airport_code: 'LGW')
Airport.create(name: 'Melbourne', airport_code: 'MEL')
Airport.create(name: 'New York', airport_code: 'NYC')
Airport.create(name: 'San Francisco', airport_code: 'SFO')

puts 'Finished Seeding Airports!'

puts 'Seeding Flights...'

origin_selection = ['EDI', 'LGW', 'MEL', 'NYC', 'SFO']
destination_selection = ['EDI', 'LGW', 'MEL', 'NYC', 'SFO']
year = [2021, 2022]

10000.times do
  origin = origin_selection.sample
  destination = destination_selection.sample
  while origin == destination
    destination = destination_selection.sample
  end

  month = sprintf '%02d', rand(12)
  day = sprintf '%02d', rand(28)
  departure_time = "#{sprintf '%02d', rand(21)}:#{sprintf '%02d', rand(59)}"
  arrival_time = (sprintf '%02d', (departure_time[0..1].to_i + 3) % 24) + ':' + departure_time[
3..4]

  departure = "#{year.sample}-#{month}-#{day} #{departure_time}"
  arrival = "#{year.sample}-#{month}-#{day} #{arrival_time}"

  from_airport_id = case origin
                    when 'EDI'
                      1
                    when 'LGW'
                      2
                    when 'MEL'
                      3
                    when 'NYC'
                      4
                    when 'SFO'
                      5
                    end
  to_airport_id = case destination
                    when 'EDI'
                      1
                    when 'LGW'
                      2
                    when 'MEL'
                      3
                    when 'NYC'
                      4
                    when 'SFO'
                      5
                    end

  Flight.create(origin: origin, destination: destination, departure: departure, arrival: arrival, from_airport_id: from_airport_id, to_airport_id: to_airport_id)
end

puts 'Finished Seeding Flights!'
