FactoryBot.define do 
  factory :match do
    association :user
      title {"テスト"}
      content {"テスト"}
      match_day {Time.new(2017,9,1).to_s}
      vanue {"大阪"}
  end 
end 