# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all


#username

user1 = User.create!(username: 'Izzi')
user2 = User.create!(username: 'Annie')


#polls && author_id(user)
#would we only need 1 poll?
poll1 = Poll.create!(polls: 'Poll 1', author_id: user1.id)
poll2 = Poll.create!(polls: 'Poll 2', author_id: user2.id)


#question string && poll_id
question1 = Question.create!(question: 'thin crust or deep dish?', poll_id: poll1.id)
question2 = Question.create!(question: 'beer or wine?', poll_id: poll2.id)


#text && question_id
answer_choice1 = AnswerChoice.create!(text: 'thin crust', question_id: question1.id)
answer_choice2 = AnswerChoice.create!(text: 'deep dish', question_id: question1.id)
answer_choice3 = AnswerChoice.create!(text: 'wine', question_id: question2.id)
answer_choice4 = AnswerChoice.create!(text: 'beer', question_id: question1.id)

# user_id && answer_choice_id
response1 = Response.create!(answer_choice_id: answer_choice1.id, user_id: user1.id )
response2 = Response.create!(answer_choice_id: answer_choice3.id, user_id: user2.id)



