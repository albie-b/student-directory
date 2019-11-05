feature 'Index' do
  scenario 'User can load the Index Page' do
    visit '/'
    expect(page).to have_content 'Welcome to Makers BNB!'
  end

  scenario 'User can select to list a new space' do
    visit '/'
    click_button('List a New Space')
    expect(page).to have_content 'List a New Space'
  end

  scenario 'User can select to hire a space' do
    visit ('/')
    click_button('Hire a Space')
    expect(page).to have_content 'Hire a Space'
  end
end
