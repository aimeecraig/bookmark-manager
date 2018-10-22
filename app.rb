require 'sinatra'

class App < Sinatra::Base
  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks' do
    "http://www.google.co.uk/"
  end
end
