require 'sinatra'

class App < Sinatra::Base
  get '/' do
    "Bookmark Manager"
  end
end
