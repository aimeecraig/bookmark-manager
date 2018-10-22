feature 'Viewing bookmarks' do
  scenario 'it shows a list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'http://www.google.com'
  end
end
