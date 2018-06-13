include Warden::Test::Helpers
Warden.test_mode!

feature 'User edit', :devise do
  after(:each) do
    Warden.test_reset!
  end

  scenario 'user changes email address' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    visit edit_user_registration_path(user)
    fill_in 'Email', with: 'newemail@example.com'
    fill_in 'Current password', with: user.password
    click_button 'Update'
    txts = [I18n.t('devise.registrations.updated'), I18n.t('devise.registrations.update_needs_confirmation')]
    expect(page).to have_content(/.*#{txts[0]}.*|.*#{txts[1]}.*/)
  end
end
