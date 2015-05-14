# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#-------------------------------ROLES-----------------------------------
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

#-------------------------------USERS-----------------------------------
User.create!(
             first_name: 'Administrator',
             last_name: '',
             email: 'admin@admin.com',
             password: 'password',
             role_id: '1',
             phone: '000-000-0000')
User.create!(
             first_name: 'Cheryl',
             last_name: 'Huber',
             email: 'cher@gmail.com',
             password: '12345678',
             phone: '222-333-4444',
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
             role_id: '8')
User.create!(
             first_name:  'Nathan',
             last_name:  'Bingham',
             email: 'nathan@gmail.com',
             password: '12345678',
             phone:  '',
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
             role_id:  '9')
User.create!(
             first_name: 'Daniel',
             last_name: 'Grewal',
             email: 'test@gmail.com',
             password: '12345678',
             phone: '',
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
             role_id: '4')
User.create!(
             first_name: 'better',
             last_name: 'test',
             email: 'test3@gmail.com',
             password: '12345678',
             phone: '',
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
             role_id: '6')
User.create!(
             first_name: 'John',
             last_name: 'Doe',
             email: 'test4@gmail.com',
             password: '12345678',
             phone: '',
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
             role_id: '2')
