User.create!(name:  "Srikanth Kumar",
             email: "sree2chin@gmail.com",
             password:              "smilyemma",
             password_confirmation: "smilyemma",
             admin: true)

# 99.times do |n|
#   name  = Faker::Name.name
#   email = "example-#{n+1}@railstutorial.org"
#   password = "password"
#   User.create!(name:  name,
#               email: email,
#               password:              password,
#               password_confirmation: password)
# end

# users = User.order(:created_at).take(6)
# 50.times do
#   content = Faker::Lorem.sentence(5)
#   users.each { |user| user.microposts.create!(content: content) }
# end