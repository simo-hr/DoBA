FactoryBot.define do
  factory :user do
    id {1}
    team_name {"testers"}
    sequence(:email) { |n| "test#{n}@example.com"}
    password {"password"}
  end
end
