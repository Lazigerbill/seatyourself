class RemoveScheduleFromReservation < ActiveRecord::Migration
  def change
  	remove_column :reservations, :schedule, :datetime
  end
end
