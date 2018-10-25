feature 'Updating bookmarks' do
  scenario 'user can update a bookmark' do
    Bookmark.create(title: 'Google', url: 'http://www.google.com')
    bookmarks = Bookmark.all
    visit '/bookmarks'
    click_button "Edit #{bookmarks.last.id}"
    fill_in 'URL', with: 'http://www.google.co.uk'
    click_button 'Update'
    expect(page).to have_link 'http://www.google.co.uk'
  end
end
