require 'rails_helper'

RSpec.describe "Dates", type: :request do
  login_user
  describe 'GET #update' do
    it 'returns http success' do
      get update_date_url(date: Date.today.iso8601)
      expect(response).to have_http_status(:redirect)
      expect(session[:current_date]).to eq(Date.today.iso8601)
    end
  end
end