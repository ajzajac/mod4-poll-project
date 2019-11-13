# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: "Andrew")
user2 = User.create(username: "Justin")

# poll1 = Poll.create(message: "Hey can you see me?", user_id: 1, yay: 0, nay: 0, expiration: '2000-01-01T01:02:00.000Z')
# poll2 = Poll.create(message: "See me yet??", user_id: 2, yay: 0, nay: 0, expiration: '2000-01-01T01:02:00.000Z')

# comment1 = Comment.create(content: "Cool comment is working", user_id: 1, poll_id: 1)
# comment2 = Comment.create(content: "Comment is working", user_id: 2, poll_id: 2)
# comment3 = Comment.create(content: "Comment is still working", user_id: 1, poll_id: 2)
