require 'rails_helper'

RSpec.describe "activity/mine.html.tailwindcss", type: :view do
  it "renders the word feed" do
    render template: 'activity/mine'
    expect(rendered).to match(/mine/)
  end
end
