feature 'Adding bookmark' do
  scenario 'adds a bookmark to the list' do
    Bookmark.create('http://www.google.com')
    visit '/'
    click_link 'Add Bookmark'
    fill_in "url", with: 'http://www.twitter.com'
    click_button 'Add'
    expect(page).to have_content 'http://www.twitter.com'
    expect(page).to have_content 'http://www.google.com'
  end
end
