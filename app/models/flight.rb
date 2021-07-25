class Flight < ApplicationRecord
  belongs_to :from_airport, class_name: "Airport", foreign_key: "from_airport_id"
  belongs_to :to_airport, class_name: 'Airport', foreign_key: 'to_airport_id'
  has_many :bookings, foreign_key: :flight_id
  has_many :booked_passengers, through: :bookings, source: :passenger, inverse_of: :booked_flights
end
