# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
	Participant.create(name: Faker::Name.name, gender: ["M", "F"].sample, dob: "2/1/00")

	Study.create(title: Faker::Book.title, principal_investigator: Faker::Name.name)
end