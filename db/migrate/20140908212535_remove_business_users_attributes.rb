class RemoveBusinessUsersAttributes < ActiveRecord::Migration
  def change
  	remove_column :business_users, :name, :string
	remove_column :business_users, :phone, :integer
	remove_column :business_users, :address, :string
	remove_column :business_users, :cuisine, :string
	remove_column :business_users, :picture_url, :string
	remove_column :business_users, :website, :string
  end
end
