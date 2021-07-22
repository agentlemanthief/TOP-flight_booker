class Booking < ApplicationRecord
  belongs_to :passenger, class_name: "passenger", foreign_key: "passenger_id"
  belongs_to :flight, class_name: "flight", foreign_key: "flight_id"
end
