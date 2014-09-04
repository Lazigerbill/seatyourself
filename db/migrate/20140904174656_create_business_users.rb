class CreateBusinessUsers < ActiveRecord::Migration
  def change
    create_table :business_users do |t|
      t.string :name
      t.integer :phone
      t.text :address
      t.string :cuisine
      t.string :picture_url
      t.string :website
      t.string :email
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
