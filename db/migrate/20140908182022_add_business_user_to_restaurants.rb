class AddBusinessUserToRestaurants < ActiveRecord::Migration
  def change
  	add_reference :restaurants, :business_user, index: true
  end
end
