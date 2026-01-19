require 'rails_helper'

RSpec.describe "DateChanges", type: :system do
  login_admin

  it "changes the date when the back arrow is pressed" do
    visit activity_mine_path

    click_on(id: 'date_backwards')
    expect(page).to have_content(
      (Date.today - 1.day).strftime("%a, %b #{(Date.today - 1.day).day.ordinalize}")
    )
  end

  it "changes the date when the forward arrow is pressed" do
    visit activity_mine_path

    click_on(id: 'date_forwards')
    expect(page).to have_content(
      (Date.today + 1.day).strftime("%a, %b #{(Date.today + 1.day).day.ordinalize}")
    )
  end

  it "should be able to visit standups and move date from picker", js: true do
    visit activity_mine_path
    date = (Time.now + 1.day).strftime("%B %-d, %Y")

    find('[data-toggle]').click
    find(".flatpickr-day[aria-label='#{date}']", visible: false).click

    expect(page).to have_content(
      (Time.now + 1.day).strftime("%a, %b #{(Time.now + 1.day).day.ordinalize}")
    )
    expect(page).to have_content(display, wait: 5)
  end

end