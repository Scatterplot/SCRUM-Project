# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
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

#-------------------------------USERS-----------------------------------
User.create!(id: '1', 
			email: 'cher@gmail.com', 
			password: '12345678',
			password_confirmation: '12345678',
			reset_password_token: '',
			reset_password_sent_at: '',
			remember_created_at: '',
			sign_in_count: '13',
			current_sign_in_at: '2015-05-06 02:28:23 UTC',
			current_sign_in_ip: '::1',
			last_sign_in_ip: '::1',
			created_at: '2015-04-22 21:29:23 UTC',
			updated_at: '2015-05-06 02:28:23 UTC', 
			last_name: 'Huber', 
			first_name: 'Cheryl',
			phone: '222-333-4444',
			role_id: '7')
User.create!(
			id: '2', 
			email: 'nathan@gmail.com', 
			password: '12345678',
			password_confirmation: '12345678', 
			reset_password_token: '1',
			reset_password_sent_at: '',
			remember_created_at: '',
			sign_in_count: '1',
			current_sign_in_at:  '2015-04-28 015844 UTC',
			current_sign_in_ip:  '1', 
			last_sign_in_ip:  '::1',
			created_at:  '2015-04-28 01:58:44 UTC',
			updated_at:  '2015-04-28 01:58:44 UTC', 
			last_name:  'Bingham', 
			first_name:  'Nathan',
			phone:  '',
			role_id:  '')
User.create!(id: '3', 
			email: 'test@gmail.com',
			password: '12345678',
			password_confirmation: '12345678',
			reset_password_token: '2',
			reset_password_sent_at: '',
			remember_created_at: '',
			sign_in_count: '1',
			current_sign_in_at: '2015-04-28 02:24:10 UTC',
			current_sign_in_ip: '::1', 
			last_sign_in_ip: '::1',
			created_at: '2015-04-28 02:24:10 UTC',
			updated_at: '2015-04-28 02:24:10 UTC',
			last_name: 'Grewal', 
			first_name: 'Daniel',
			phone: '',
			role_id: '')
User.create!(id: '4', 
			email: 'test3@gmail.com', 
			password: '12345678',
			password_confirmation: '12345678', 
			reset_password_token: '3',
			reset_password_sent_at: '',
			remember_created_at: '',
			sign_in_count: '1',
			current_sign_in_at: '2015-04-28 02:39:06 UTC',
			current_sign_in_ip: '::1', 
			last_sign_in_ip: '::1',
			created_at: '2015-04-28 02:39:06 UTC',
			updated_at: '2015-04-28 02:39:06 UTC', 
			last_name: 'test', 
			first_name: 'better',
			phone: '',
			role_id: '')
User.create!(id: '5', 
			email: 'test4@gmail.com',
			password: '12345678',
			password_confirmation: '12345678',
			reset_password_token: '4',
			reset_password_sent_at: '',
			remember_created_at: '',
			sign_in_count: '1',
			current_sign_in_at: '2015-04-28 03:04:19 UTC',
			current_sign_in_ip: '::1', 
			last_sign_in_ip: '::1',
			created_at: '2015-04-28 03:04:19 UTC',
			updated_at: '2015-04-28 03:04:19 UTC', 
			last_name: 'Doe', 
			first_name: 'John',
			phone: '',
			role_id: '2')




