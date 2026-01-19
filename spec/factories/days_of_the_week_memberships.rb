FactoryBot.define do
  factory :days_of_the_week_membership do
    team { association(:team) }
    day { 1 }
  end
end
