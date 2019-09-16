# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Quarter.destroy_all
User.destroy_all
Club.destroy_all
Recrutement.destroy_all
Request.destroy_all
Event.destroy_all

	20.times do
        Quarter.create(zip_code: Faker::Address.zip_code,
                    name: Faker::Address.street_name
                    )
    end

puts "20 seed for Quarter created succesfully with 4 attributs"

    20.times do
        User.create(email: Faker::Internet.email,
                    password: "123456", 
                    quarter_id: rand(1..20),
                    club_id: rand(1..20),
                    first_name: Faker::Name.first_name ,
                    last_name: Faker::Name.last_name,
                    age: rand(12..50),
                    description:Faker::Quote.yoda,
                    gender: Faker::Gender.binary_type,
                    pseudonym: Faker::Superhero.descriptor
                    )
    end

puts "20 seed for Recrutement created succesfully with 2 attributs"

20.times do
        Club.create(name: Faker::Game.title,
                    category: Faker::Address.city, 
                    admin_id: rand(1..20), 
                    quarter_id: rand(1..20))
    end
puts "10 seed for user created succesfully with 2 attributs and quarter_id"

    20.times do
    	a = 21
    	date = "#{a}/09/19"
        Recrutement.create(content: Faker::Movies::Hobbit.character,
                                deadline: date, club_id: rand(1..5))
        a +=1
    end



puts "10 seed for Club created succesfully with attribut user_id and quarter_id"

    10.times do
        Request.create(application_letter: Faker::Movie.quote, parcours: Faker::Movies::Hobbit.character, user_id: rand(1..10), recrutement_id: rand(1..20))
    end

puts "10 seed for Request created succesfully with attribut user_id "

    20.times do
      a = 21
      date = "#{a}/09/19"
        Event.create(start_date: date, 
                    duration: 5*rand(2..10), 
                    title: Faker::Movie.quote, 
                    description: Faker::Movies::Hobbit.character, 
                    price: rand(10..50), 
                    location: Faker::Game.title, 
                    club_id: rand(1..20)
                    )
    end

puts "20 seed for Events created succesfully with attribut user_id "
