# As a user
# So that I can quickly access websites
# I'd like to view a list of bookmarks
# ```

feature 'Displays page' do
  scenario 'Shows hello world' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end
end
