# Criando Users

30.times do |n|
  name  = "#{n+1}" + Faker::Name.name
  username = name.remove(" ","").downcase.to(19)
  email = "e-#{n+1}@t.com"    #"email-#{n+1}@microblog.com.br"
  url =  username + ".com.br" #Faker::Internet.url
  birth = Faker::Business.credit_card_expiry_date
  password = "1" #"12345678"
  User.create!(name: name,
  			   username: username,
               email: email,
               site: url,
               birth: birth,
               password:              password,
               password_confirmation: password)
end

# Criando os Microposts
users = User.order(:created_at).take(6)
10.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

# Following relationships
users = User.all
user  = users.first
following = users[2..5]
followers = users[3..4]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
