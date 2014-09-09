class AddColumnsDateTimeToReservations < ActiveRecord::Migration
  def change
  	add_column :reservations, :date, :datetime
  	add_column :reservations, :time, :datetime
  end
end
