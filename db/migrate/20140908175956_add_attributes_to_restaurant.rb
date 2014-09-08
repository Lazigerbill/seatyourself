class AddAttributesToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :name, :string
    add_column :restaurants, :phone, :integer
    add_column :restaurants, :address, :string
    add_column :restaurants, :cuisine, :string
    add_column :restaurants, :picture_url, :string
    add_column :restaurants, :website, :string
  end
end
