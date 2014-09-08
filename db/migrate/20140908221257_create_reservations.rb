class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :persons
      t.integer :user_id
      t.datetime :schedule

      t.timestamps
    end
  end
end
