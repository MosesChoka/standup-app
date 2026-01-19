FactoryBot.define do
  factory :team do
    sequence(:name) { |n| "Team #{n}" }
    account { association(:account) }
    sequence(:timezone) { |n| "Timezone #{n}" }
    has_reminder { false }
    has_recap { false }
    reminder_time { "2026-01-19 22:25:31" }
    recap_time { "2026-01-19 22:25:31" }
  end
end
