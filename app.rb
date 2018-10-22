require 'sinatra'

class App < Sinatra::Base
  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks' do
    erb :bookmarks
  end
end
