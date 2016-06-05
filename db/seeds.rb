# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Song.delete_all
Like.delete_all

alex = User.new(name: "Alex", email: "aleksanyanalek@gmail.com", password: "hello123", password_confirmation: "hello123")
alex.save

puts alex.errors.full_messages
