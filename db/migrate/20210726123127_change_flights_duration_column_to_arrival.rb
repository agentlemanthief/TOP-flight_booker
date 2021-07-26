class ChangeFlightsDurationColumnToArrival < ActiveRecord::Migration[6.1]
  def change
    rename_column :flights, :duration, :arrival
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
