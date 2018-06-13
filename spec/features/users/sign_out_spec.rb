feature 'Sign out', :devise do
  scenario 'user signs out successfully' do
    user = FactoryGirl.create(:user)
    signin(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'
    click_link 'Sign Out'
    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end
end
