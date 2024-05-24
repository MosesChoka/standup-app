FactoryBot.define do
  factory :user do
    account_id { create(:account).id }
    name { "MyString" }
    email {"email.test@email.com"}
    password {"123ewq"}
  end
end
