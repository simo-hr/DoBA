User.create!(name: "Sample", password: "foobar")
 
9.times do |n|
    name  = Faker::Name.name
    password = "password"
    User.create!(name:  name, password: password)
end

  users = User.order(:created_at).take(6)

10.times do
  title = "授業名"
  content = Faker::Lorem.sentence(5)
  start_time = Time.now
  users.each { |user| user.tasks.create!(content: content, title: title) }
end