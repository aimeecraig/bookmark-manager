require 'bookmark'

describe Bookmark do
  describe '#all' do
    context 'when one bookmark is created' do
      it 'returns one bookmark' do
        Bookmark.create(title: 'Google', url: 'http://www.google.com')
        bookmarks = Bookmark.all
        expect(bookmarks[0].title).to eq "Google"
        expect(bookmarks[0].url).to eq "http://www.google.com"
      end
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
      p bookmarks.last.id
      p bookmarks.last.title
      Bookmark.delete(bookmarks.last.id)
      p bookmarks.last
      expect(bookmarks.last.title).not_to eq 'Facebook'
    end
  end
end
