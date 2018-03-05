require 'sinatra'
require 'dotenv/load'
require './meyasu_box'

Dotenv.load

post '/' do
  return status(200) if MeyasuBox.post(params)
  status(500)
end
