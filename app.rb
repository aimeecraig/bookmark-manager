require 'sinatra'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/bookmarks/new' do
    erb :add
  end

  post '/bookmarks' do
    url = params['url']
    Bookmark.create(url)
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
