feature 'Navigation links', :devise do
  scenario 'view navigation links for user' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    visit root_path
    expect(page).to have_content 'Sign Out'
  end
end
