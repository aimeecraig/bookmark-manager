require 'bookmark'

describe Bookmark do
  context '#all' do
    it 'returns a list of bookmarks' do
      expect(subject.all).to eq 'http://www.google.co.uk/'
    end
  end
end
