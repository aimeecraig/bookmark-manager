feature 'Viewing bookmarks' do
  scenario 'it shows a list of bookmarks' do
    Bookmark.create(title: 'Google', url: 'http://www.google.com')
    visit '/bookmarks'
    expect(page).to have_link('Google', :href => 'http://www.google.com')
  end
end
