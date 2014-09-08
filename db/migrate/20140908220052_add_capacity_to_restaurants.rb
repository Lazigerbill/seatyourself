class AddCapacityToRestaurants < ActiveRecord::Migration
  def change
  	add_column :restaurants, :capcity, :integer
  end
end
