class Passenger < ApplicationRecord
  has_many :bookings, foreign_key: :passenger_id
  has_many :booked_flights, through: :bookings, source: :flight, inverse_of: :passengers

  validates :name, presence: true
  validates :email, presence: true
end
