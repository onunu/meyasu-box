require 'sinatra'
require './meyasu_box'

get '/' do
  'Hello, world'
end

post '/' do
  MeyasuBox.post(params)
end
