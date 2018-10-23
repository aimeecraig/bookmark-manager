require 'bookmark'

describe Bookmark do
  subject(:bookmark) { Bookmark.new }

  describe '#all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include "http://www.google.com"
    end
  end
end
