class BusinessUser < ActiveRecord::Base
	has_secure_password
	has_many :restaurants
end
