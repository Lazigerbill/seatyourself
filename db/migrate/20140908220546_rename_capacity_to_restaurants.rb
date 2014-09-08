class RenameCapacityToRestaurants < ActiveRecord::Migration
  def change
  	rename_column :restaurants, :capcity, :capacity
  end
end
