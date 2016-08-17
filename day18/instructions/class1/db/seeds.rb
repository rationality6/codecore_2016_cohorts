# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Qustion.create({ title: Faker::StarWars.quote }, body: Faker::Hipster.paragraph)

QUESTIONS_TO_CREATE = 500

QUESTIONS_TO_CREATE.times do
    Question.create title:      Faker::StarWars.quote,
                    body:       Faker::Hipster.paragraph
                    # view_count: rand(100)
end

puts Cowsay.say "Created #{QUESTIONS_TO_CREATE} questions"
