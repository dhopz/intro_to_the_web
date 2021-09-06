require 'sinatra'
require 'sinatra/reloader'

get '/' do
	"hello WORLD"
end

get '/secret' do
    "why hello there"
end

get '/this' do
    "is where you are"
end

get '/why' do
    "are you here?"
end

get '/how' do
    "did we end up here?"
end

get '/random-cat' do
    @cat_name = ["Amigo", "Misty", "Almond"].sample
    erb(:cat_file)
    
end
get '/named-cat' do
	p params
	@cat_name = params[:name]
	erb(:cat_file)
end