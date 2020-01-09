# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "Andrew")
user2 = User.create(username: "Justin")
user3 = User.create(username: "Yoan")
user4 = User.create(username: "hulk hogan")

poll1 = Poll.create(message: "Who would win in an arm wrestle?", user_id: 1, yay: 1000, nay: 0, option1: 'Yoan', option2: 'Sebastian', expiration: '2019-11-15T14:00:00.000Z')
poll2 = Poll.create(message: "Who will finish the newly deployed labs first?", user_id: 2, yay: 13, nay:1 , option1: 'Ori', option2: 'The rest of the class', expiration: '2019-11-15T16:45:00.000Z')
poll3 = Poll.create(message: "hulk hogan", user_id: 1, yay: 2134, nay:4536 , option1: 'hulk', option2: 'hogan', expiration: '2019-11-15T16:30:00.000Z')
poll4 = Poll.create(message: "Are you in for Pizza Friday?", user_id: 2, yay: 14, nay:14 , option1: 'Hell Yeah Brother', option2: 'Yes', expiration: '2019-11-15T16:59:00.000Z')

comment1 = Comment.create(content: "first", user_id: 2, poll_id: 1)
comment2 = Comment.create(content: "About to give Sebastian a lecturoni in arm wrestling", user_id: 3, poll_id: 1)
comment3 = Comment.create(content: 'hell yeah brother', user_id: 4, poll_id: 3)
