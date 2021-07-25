class Booking < ApplicationRecord
  belongs_to :flight, class_name: "Flight", foreign_key: "flight_id"
  belongs_to :passenger, class_name: "Passenger", foreign_key: "passenger_id"

  accepts_nested_attributes_for :passenger
end
