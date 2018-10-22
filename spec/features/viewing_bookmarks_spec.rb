feature 'Viewing bookmarks' do
  scenario 'it shows a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")
    visit '/bookmarks'
    expect(page).to have_content 'http://www.google.com'
  end
end
