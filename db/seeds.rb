# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.new(first_name: "J", last_name: "Y")
Student.new(first_name: "P", last_name: "D")
SchoolClass.new(title: "ECON101", room_number: 100)
SchoolClass.new(title: "ECON202", room_number: 200)
