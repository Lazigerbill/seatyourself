class ChangeDataTypeForPhone < ActiveRecord::Migration
  def change
  	change_column :restaurants, :phone, :string
  end
end
