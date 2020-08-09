FactoryBot.define do
  factory :user do
    team_name {"testers"}
    sequence(:email) { |n| "test#{n}@example.com"}
    password {"password"}
  end
end
