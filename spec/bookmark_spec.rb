require 'bookmark'

describe Bookmark do
  describe '#all' do
    it 'returns a list of bookmarks' do
      Bookmark.create(title: 'Google', url: 'http://www.google.com')
      bookmarks = Bookmark.all
      expect(bookmarks[0].title).to eq "Google"
      expect(bookmarks[0].url).to eq "http://www.google.com"
    end
  end

  describe '#create' do
    it 'adds a new bookmark' do
      Bookmark.create(title: 'Google', url: 'http://www.google.com')
      bookmarks = Bookmark.all
      expect(bookmarks[0].title).to eq "Google"
      expect(bookmarks[0].url).to eq "http://www.google.com"
    end
  end
end
