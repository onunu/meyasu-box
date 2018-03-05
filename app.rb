require 'sinatra'
require 'dotenv/load'
require './meyasu_box'

Dotenv.load

get '/' do
  'Hello, this is slack app. This app does not provide UI'
end

post '/' do
  return status(200) if MeyasuBox.post(params)
  status(500)
end
