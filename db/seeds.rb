# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user1 = User.find_or_create_by(name: "Olszewski, Eric A") do |u| 
	u.address = '106 Franklin Blvd, Unit A'
	u.date_of_birth = '08/08/1992'
	u.us_citizen = true
	u.is_item_a = false
	u.is_item_b = false
	u.is_item_c = false
	u.state = "TX"
	u.combobox = nil
	u.social_security = "678234123"
	u.zipcode = "78751"
	u.email = "eolszewski@gmail.com"
	u.telephone = "7138258982"
	u.city = "Austin"
end

user2 = User.find_or_create_by(name: "Sischo, Samantha R") do |u| 
	u.address = '808 W 29th St, Apt #204'
	u.date_of_birth = '12/07/1991'
	u.us_citizen = true
	u.is_item_a = false
	u.is_item_b = false
	u.is_item_c = false
	u.state = "TX"
	u.combobox = nil
	u.social_security = "123451234"
	u.zipcode = "78705"
	u.email = "s.sischo@gmail.com"
	u.telephone = "9142398080"
	u.city = "Austin"
end


