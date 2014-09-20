# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


BusinessUser.destroy_all
Restaurant.destroy_all

BusinessUser.create!({
	email: "test@bitmakerlabs.com",
	username: "test@bitmaker",
	password: "pass",
	password_confirmation: "pass"
	}
)

100.times do |i|
	Restaurant.create({
		name: Faker::Company.name+" "+Faker::Company.suffix,
		picture_url: Faker::Company.logo,
		phone: Faker::PhoneNumber.phone_number,
		address: Faker::Address.street_address+", "+Faker::Address.city,
		cuisine: Faker::Address.country,
		capacity: Faker::Number.number(2)
		}
	)
end


  # create_table "business_users", force: true do |t|
  #   t.string   "email"
  #   t.string   "username"
  #   t.string   "password_digest"
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
  # end



  # create_table "restaurants", force: true do |t|
  #   t.datetime "created_at"
  #   t.datetime "updated_at"
  #   t.string   "name"
  #   t.integer  "phone"
  #   t.string   "address"
  #   t.string   "cuisine"
  #   t.string   "picture_url"
  #   t.string   "website"
  #   t.integer  "business_user_id"
  #   t.integer  "capacity"
  # end
