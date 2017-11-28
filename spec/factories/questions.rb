FactoryBot.define do
  factory :question do
    user { User.first || association(:user) }
    title { Faker::Lorem.sentence(3, true) }
    body { Faker::Lorem.paragraph }
  end
end
