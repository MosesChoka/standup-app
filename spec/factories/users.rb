FactoryBot.define do
  factory :user do
    account # user and account association
    name {"MyString"}
    email { Faker::Internet.email }
    password {"123ewq"}
    password_confirmation {"123ewq"}
  end
end