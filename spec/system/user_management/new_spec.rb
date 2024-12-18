require 'rails_helper'

RSpec.describe "New User", type: :system do
  login_admin

  it 'should be able to visit the user index and see at least one user' do
    visit account_users_path

    expect(page).to have_current_path(account_users_path)
    expect(page).to have_content(@admin.email.to_s)
  end

  context 'a regular user' do
    login_user

    it 'should redirect with only user access' do
      visit account_users_path
      expect(page).to have_current_path(root_path)
    end
  end

  context 'click and new the user' do
    it 'should click new and go to new page' do
      visit account_users_path
      click_on('Add User')
      expect(page).to have_current_path(new_account_user_path)
    end
  end

  context 'and on the new page' do
    it 'and new the user successfuly' do
      visit account_users_path
      click_on('Add User')

      within '#new_user' do
        fill_in 'user_email', with: 'test@test.com'
        select('User', from: 'user_role')
      end

      click_button('Add User')
      expect(page).to have_current_path(account_users_path)

    end

    it 'and faill to new the user successfully' do
      visit account_users_path
      click_on('Add User')

      within '#new_user' do
        fill_in 'user_email', with: ''
        select('User', from: 'user_role')
      end

      click_button('Add User')
      expect(page).to have_current_path(account_users_path)
    end
  end
end