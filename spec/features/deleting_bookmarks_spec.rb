feature 'Deleting bookmarks' do
  scenario 'deletes a bookmark' do
    Bookmark.create(title: 'Google', url: 'http://www.google.com')
    visit '/'
    click_link 'View Bookmarks'
    click_button 'Google'
    expect(page).not_to have_content 'Google'
  end
end
