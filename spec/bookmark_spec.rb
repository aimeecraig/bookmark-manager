require 'bookmark'

describe Bookmark do
  describe '#all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include "http://www.google.com"
    end
  end

  describe '#create' do
    it 'adds a new bookmark' do
      Bookmark.create('Google', 'http://www.google.com')
      expect(Bookmark.all).to have_content 'Google'
      expect(Bookmark.all).to have_content 'http://www.google.com'
    end
  end
end
