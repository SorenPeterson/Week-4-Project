require 'faker'

User.create(email: "jessie@jessie.com", password_hash: "password", about_me: "i am awesome!!" )
User.create(email: "hannah@hannah.com", password_hash: "password", about_me: "I didn't choose the thug life, it chose me." )
User.create(email: "soren@soren.com", password_hash: "password", about_me: "i like turtles" )
User.create(email: "michael@michael.com", password_hash: "password", about_me: "I wish i was a squirrel" )

users = User.all
users.each do |user|
  10.times do
    tweet = Faker::Hacker.say_something_smart
    user.tweets.create(content: tweet)
  end
end
