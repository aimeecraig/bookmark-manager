require 'bookmark'

describe Bookmark do
  context '#all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include "http://www.google.com"
    end
  end
end
