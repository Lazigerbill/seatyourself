class Restaurant < ActiveRecord::Base
	belongs_to :business_user
	has_many :reservations
	has_many :users, through: :reservations
end
