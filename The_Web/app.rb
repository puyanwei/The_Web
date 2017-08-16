require 'sinatra'

get '/' do
  "Hello"
end

get '/secret' do
  "Goodbye"
end

get '/classified' do
  "Goodnight!"
end

get '/random-cat' do
  @name = ["Garfield", "Felix", "Cheshire"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
