pw = 111111
User.create!(team_name: "Mypacers",
             email: "pacers@doba.com",
             password: pw,
             area: "大阪",
             level: "ほどよくガチ")
User.create!(team_name: "東京Victory",
             email: "victory@doba.com",
             password: pw,
             area: "東京",
             level: "ガチガチ")
User.create!(team_name:  "株式会社デューバ　バスケ部",
             email: "company-doba@doba.com",
             password: pw,
             area: "福岡",
             level: "ほどよくガチ")

user1 = User.find_by(team_name: "Mypacers")             
user2 = User.find_by(team_name: "東京Victory")             
user3 = User.find_by(team_name: "株式会社デューバ　バスケ部")             
user1.matches.create!(title:"市内で試合できる方",             
              match_day: Date.new(2020,06,13),
              content:"６月１3日１９時から市内の○○体育館で試合できるチーム募集中です！",
              vanue:"大阪")
user1.matches.create!(title:"大阪でバスケの大会を開催します！",             
              match_day: Date.new(2020,06,21),
              content:"６月２１日に４チームほどで総当たり戦をやります！場所は△△体育館で、参加費は１０００円です。",
              vanue:"大阪")
user2.matches.create!(title:"東京で試合したい方！",             
              match_day: Date.new(2020,06,21),
              content:"６月２１日に渋谷の××体育館で、試合します！詳細はメッセージでお知らせします",
              vanue:"東京")