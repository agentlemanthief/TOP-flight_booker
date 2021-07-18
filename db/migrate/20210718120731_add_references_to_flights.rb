class AddReferencesToFlights < ActiveRecord::Migration[6.1]
  def change
    add_reference :flights, :from_airport
    add_reference :flights, :to_airport
  end
end
