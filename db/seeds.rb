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
jilbert = User.new(name: "Jilbert", email: "jil@gmail.com", password: "abc123", password_confirmation: "abc123")
alex.save
jilbert.save


smooth_operator = Song.new(
    artist: "Sade",
    title: "Smooth Operator",
    lyric: "He's laughing with another girl
And playing with another heart
Placing high stakes, making hearts ache
He's loved in seven languages
Jewel box life diamond nights and ruby lights, high in the sky
Heaven help him, when he falls
Diamond life, lover boy
He move in space with minimum waste and maximum joy
City lights and business nights
When you require streetcar desire for higher heights

No place for beginners or sensitive hearts
When sentiment is left to chance
No place to be ending but somewhere to start

No need to ask
He's a smooth operator
Smooth operator, smooth operator
Smooth operator

Coast to coast, LA to Chicago, western male
Across the north and south, to Key Largo, love for sale

Face to face, each classic case
We shadow box and double cross
Yet need the chase

A license to love, insurance to hold
Melts all your memories and change into gold
His eyes are like angels but his heart is cold

No need to ask
He's a smooth operator
Smooth operator, smooth operator
Smooth operator

Coast to coast, LA to Chicago, western male
Across the north and south, to Key Largo, love for sale

Smooth operator, smooth operator
Smooth operator, smooth operator
Smooth operator, smooth operator
Smooth operator, smooth operator
Smooth operator, smooth operator"
)

smooth_operator.save


puts alex.errors.full_messages
puts jilbert.errors.full_messages
puts smooth_operator.errors.full_messages
