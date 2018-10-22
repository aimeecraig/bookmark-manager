require 'sinatra'
require './lib/bookmark'

class App < Sinatra::Base
  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end
end
