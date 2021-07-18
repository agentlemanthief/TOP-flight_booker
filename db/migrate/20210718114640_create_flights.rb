class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.string :origin
      t.string :destination
      t.datetime :departure
      t.time :duration

      t.timestamps
    end
  end
end
