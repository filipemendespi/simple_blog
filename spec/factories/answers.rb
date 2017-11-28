FactoryBot.define do
  factory :answer do
    user { User.first || association(:user) }
    question { Question.first || association(:question) }
    title { Faker::Lorem.sentence(3, true) }
    body { Faker::Lorem.paragraph }
  end
end
