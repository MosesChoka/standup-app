require 'rails_helper'

RSpec.describe "teams/new", type: :system do
  login_admin

  let!(:team) {FactoryBot.create(:team, account_id: @admin.account.id)}

  it "should be able to visit the team index and at least see one team" do
    visit teams_path

    expect(current_path).to eq(teams_path)
    expect(page).to have_content("Teams")
    expect(page).to have_content(team.name)
  end

  it "should click teamand see show page" do
    visit teams_path
    click_link(href: team_path(team), match: :first)
    expect(current_path).to eq(team_path(team))
    expect(page).to have_content("#{team.name}")
  end

end