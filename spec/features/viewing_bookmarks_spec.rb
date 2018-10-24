feature 'Viewing bookmarks' do
  scenario 'it shows a list of bookmarks' do
    Bookmark.create('Google', 'http://www.google.com')
    visit '/bookmarks'
    expect(page).to have_content 'Google'
    expect(page).to have_content 'http://www.google.com'
  end
end
