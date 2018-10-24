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

  describe '#delete' do
    it 'deletes a bookmark' do
      Bookmark.create(title: 'Google', url: 'http://www.google.com')
      Bookmark.create(title: 'Facebook', url: 'http://www.facebook.com')
      bookmarks = Bookmark.all
      expect(bookmarks.length).to eq 2
      Bookmark.delete('Google')
      bookmarks = Bookmark.all
      expect(bookmarks.length).to eq 1
      exist = false
      bookmarks.each do |bookmark|
        exist = true if bookmark.title == 'Google'
      end
      expect(exist).to eq false
    end
  end
end
