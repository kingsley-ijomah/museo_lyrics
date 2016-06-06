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

touch_the_sky = Song.new(
  artist: "Kanye West",
  title: "Touch The Sky",
  lyric: "I gotta testify, come up in the spot looking extra fly
For the day I die, I'mma touch the sky
Gotta testify, come up in the spot looking extra fly
For the day I die, I'mma touch the sky

Back when they thought pink polo's would hurt the Roc,
Before Cam got the shit to pop, the doors was closed.
I felt like Bad Boy's street team, I couldn't work the Lox (locks).
Now let's go.
Take 'em back to the plan...
Me and my momma hopped in the U-Haul van.
Any pessimists I ain't talked to them,
Plus, I ain't have no phone in my apartment.
Let's take 'em back to the club.
Least about an hour I would stand on line,
I just wanted to dance.
I went to Jacob an hour after I got my advance.
I just wanted to shine.
Jay's favorite line: 'Dog, in due time'
Now he look at me, like 'Damn, dog, you where I am'
A hip hop legend.
I think I died in an accident, cause this must be heaven.

[Chorus]

[Hook 1 (P. Diddy)]
Now let's take 'em high-igh-igh-igh-igh-igh la la la la la la la
(Top of the world, baby. T-Top of the world)
Now let's take 'em high-igh-igh-igh-igh-igh la la la la la la la
(Top of the world, baby. T-Top of the world)

Back when Gucci was the shit to rock,
Back when Slick Rick got the shit to pop,
I'd do anything to say 'I got it'.
Damn, them new loafers hurt my pocket.
Before anybody wanted K-West beats,
Me and my girl split the buffet at KFC.
Dog, I was having nervous breakdowns,
Like 'Damn, these niggas that much better than me?''
Baby, I'm going on an airplane,
And I don't know if I'll be back again.
Sure enough, I sent the plane tickets,
But when she came to kick it, things became different.
Any girl I cheated on, sheets I skeeted on.
I couldn't keep it home, I thought I needed a Nia Long.
I'm trying to write my wrongs,
But it's funny these same wrongs helped me write this song.
Now,

[Chorus 2]
I gotta testify, come up in the spot looking extra fly
For the day you die, You gonna touch the sky
(You gonna touch the sky babygirl!) Testify, come up in the spot
Looking extra fly
For the day you die, You gonna touch the sky

Yes, yes, yes guess who's on third?
Lupe steal like Lupin the Third.
Hear like ear till I'm beer on the curb
Peach fuzz buzz but beard on the verge
Slow it down like we're on the syrup
Bottle-shaped body like Mrs. Butterworth's.
But, before you say another word,
I'm back on the block like I'm laying on the street.
I'm trying to stop lion like a Mum-Ra,
But I'm not lying when I'm laying on the beat.
Engarge, touché Lupe cool as the unthawed
But I still feel as possessed as a gun charge.
I come as correct as a porn star,
In a fresh pair of steps and my best foreign car.
So, I represent the first.
Now, let me end my verse right where the horns are like

[Chorus 2]

[Hook 2 (P. Diddy)]
(We back at home, baby)
Sky high
I'm, I'm sky high
I'm, I'm sky high
I'm, I'm sky high
I'm, I'm sky high
I'm, I'm sky high
Sky, Sky high
I'm, I'm sky high
Yeah! (Keep it rolling)
(Feels good to be home, baby! Feels good to be home!)"
)

touch_the_sky.save




puts alex.errors.full_messages
puts jilbert.errors.full_messages
puts smooth_operator.errors.full_messages
puts touch_the_sky.errors.full_messages
