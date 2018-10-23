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
      subject.create('http://www.google.co.uk')
      expect(subject.all).to include 'http://www.google.co.uk'
    end
  end
end
