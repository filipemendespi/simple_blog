FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    name { Faker::Name.name_with_middle }
    password { Faker::Internet.password }
    registration { CPF.generate }
    gender { Gender::MALE }
    birthday { Faker::Date.birthday }
    fb_uid { Faker::Number.number(8) }
  end
end
