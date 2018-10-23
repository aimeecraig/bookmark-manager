feature 'Adding bookmark' do
  scenario 'adds a bookmark to the list' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks(url) VALUES('http://www.google.com');")
    visit '/'
    click_link 'Add Bookmark'
    fill_in "url", with: 'http://www.twitter.com'
    click_button 'Add'
    expect(page).to have_content 'http://www.twitter.com'
    expect(page).to have_content 'http://www.google.com'
  end
end
