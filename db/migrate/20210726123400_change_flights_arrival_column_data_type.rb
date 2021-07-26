class ChangeFlightsArrivalColumnDataType < ActiveRecord::Migration[6.1]
  def change
    change_column :flights, :arrival, :datetime
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
