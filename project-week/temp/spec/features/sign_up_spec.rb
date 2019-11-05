feature 'Sign Up' do
  scenario 'User can view the sign-up page' do
    visit('/')
    click_button('Sign Up')
    expect(page).to have_content 'Sign up for Makers BNB'
  end

  scenario 'User can sign up to Makers BNB' do
    visit('/')
    click_button('Sign Up')
    fill_in('First Name', with: 'Will')
    click_button('Submit')
    expect(page).to have_content 'Thank you for signing up!'
  end
end
