require("imdb")
require "sinatra" 
require "sinatra/reloader" if development?
require 'pry'
require_relative "lib/movie_term"
#also 'sinarta' works
enable(:sessions) #Tells your app that you're using sessions


get '/' do 
	erb :home
end

get "/movie_term" do
	@input = params[:movie_term]
	@all_movies = MovieTerm.new(@input)
	@some_movies = @all_movies.search
	erb :movie_term
end

get '/about' do 
	erb :about
end

get '/contact' do 
	erb :contact
end