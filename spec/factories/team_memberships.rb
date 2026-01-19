FactoryBot.define do
  factory :team_membership do
    team { association(:team) }
    user { association(:user) }
  end
end
