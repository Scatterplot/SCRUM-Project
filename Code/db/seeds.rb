# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.create role: "Schedule Administrator"
Role.create role: "Family Physician"
Role.create role: "Chiropractor/PT"
Role.create role: "Dentist"
Role.create role: "Pediatrician"
Role.create role: "Podiatrist"
Role.create role: "Pharmacists"
Role.create role: "Nurse"
Role.create role: "Scribe"
Role.create role: "Pharmacy Tech"
Role.create role: "EMT or MA"
Role.create role: "Bi-lingual Volunteer"
Role.create role: "Dietitian"

User.create([{first_name: "Administrator",last_name: "",email: "admin@admin.com",password: "password", role_id: 1,phone: 0000000000}])