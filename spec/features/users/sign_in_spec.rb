feature 'Log in', :devise do
  scenario 'user cannot Log in if not registered' do
    signin('test@example.com', '123456789')
    expect(page).to have_content 'Invalid Email or password.'
  end

  scenario 'user can sign in with valid credentials' do
    user = FactoryGirl.create(:user)
    visit 'users/sign_in'
    signin(user.email, user.password)
    expect(page).to have_content 'Signed in successfully.'
  end

  scenario 'user cannot sign in with wrong email' do
    signin('invalid@email.com', '123456789')
    expect(page).to have_content 'Invalid Email or password.'
  end

  scenario 'user cannot sign in with wrong password' do
    user = FactoryGirl.create(:user)
    signin(user.email, 'invalidpassword')
    expect(page).to have_content 'Invalid Email or password.'
  end
end
