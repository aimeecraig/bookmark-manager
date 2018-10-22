feature 'Displays page' do
  scenario 'Shows hello world' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end
end
