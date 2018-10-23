feature 'Displays page' do
  scenario 'shows web app name' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end
end
