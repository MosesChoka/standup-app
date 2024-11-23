# this file set a spec mapping for Devise, create a User record and log in the user that was just created
module RequestMacros
  def login_user
    before(:each) do
      @user = FactoryBot.create(:user)
      sign_in @user
    end
  end
end
