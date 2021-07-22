class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings, id: false do |t|
      t.bigint :passenger_id
      t.bigint :flight_id

      t.timestamps
    end

    add_index :bookings, :passenger_id
    add_index :bookings, :flight_id
  end
end
