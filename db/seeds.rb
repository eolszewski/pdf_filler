# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user1 = User.find_or_create_by(name: "James Dae") do |u| 
  u.address = 'New York'
  u.date_of_birth = Time.now - 1.month
end

user2 = User.find_or_create_by(name: "John Dansebee") do |u| 
  u.address = 'Moscow'
  u.date_of_birth = Time.now - 2.month - 4.day
end

user3 = User.find_or_create_by(name: "Alex Podolsky") do |u| 
  u.address = 'Amsterdam'
  u.date_of_birth = Time.now - 7.month - 9.day
end

user4 = User.find_or_create_by(name: "Frank David") do |u| 
  u.address = 'Poland'
  u.date_of_birth = Time.now - 4.month - 11.day
end