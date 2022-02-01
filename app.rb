require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'Hello world'
end

get '/secret' do
  'hey'
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  # erb(:index)
end

get '/cat-form' do
  #p params
  #@name = params[:name]
  erb(:cat_form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

