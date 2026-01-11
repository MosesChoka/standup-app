FactoryBot.define do
  factory :account do
    sequence(:name) { |n| "MyString#{n}" }
    sequence(:addr1) { |n| "MyString#{n}" }
    sequence(:addr2) { |n| "MyString#{n}" }
    sequence(:city) { |n| "MyString#{n}" }
    sequence(:state) { |n| "MyString#{n}" }
    sequence(:zip) { |n| "MyString#{n}" }
    sequence(:country) { |n| "MyString#{n}" }
    settings { "" }
  end
end
