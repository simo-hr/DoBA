# User.create!(id: 1
#              team_name: "Mypacers",
#              email: "pacers@match.com",
#              password: "password",
#              area: "大阪",
#              level: "ほどよくガチ")
# User.create!(id: 2
#              team_name: "東京Victory",
#              email: "victory@match.com",
#              password: "password",
#              area: "東京",
#              level: "ガチガチ")
# User.create!(id: 3
#              team_name:  "株式会社マッチ　バスケ部",
#              email: "company-match@match.com",
#              password: "password",
#              area: "福岡",
#              level: "ほどよくガチ")


20.times do |n|
  team_name  = "ユーザー#{n}"
  email = "sample-#{n}@gmail.com"
  level = ["初心者有り", "経験者", "大会出場レベル"]
  area = ["東京", "大阪",  "福岡"]
  password = "password"
  User.create!(team_name:  team_name,
                email: email,
                password: password,
                level: level.sample,
                area: area.sample
              )
end

users = User.order(:created_at)
50.times do |n|
  title  = "募集#{n}"
  match_day = Time.zone.now
  content = "試合内容#{n}"
  user_id = n
  vanue = ["東京", "大阪",  "福岡"]
  users.each { |user| user.matches.create!(content: content, vanue: vanue.sample, title: title, match_day: match_day) }
end