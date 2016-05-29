require "sinatra" 
require "sinatra/reloader" if development?
require 'pry'
#also 'sinarta' works
enable(:sessions) #Tells your app that you're using sessions


get "/user/login" do

end

get "/username/:name" do
	name = params[:name]
	session[:saved_name] = saved_name
	"#{name}"
end

get "/sessions_show" do
	name = session[:saved_name]
	"#{name}"
end

get "/" do
	# name = "Melike"
	# binding.pry
	"Hello Sinatra"
end

get "/hi" do
	@greeting = "hi, this is another route in my application"
	erb :hi
end

get "/about" do
	erb :about
end

get "/time" do
	@time = Time.now
	erb :time
end
get "/pizza" do
	@ingredients =["pepperoni" ,"cheese", "olives", "tomato"]
	erb :pizza
end

get "/users/:username" do
	p params
	@username = params[:username]
	erb :profile
end

get "/hours/ago/:hours_ago"do
	@hours_ago = params[:hours_ago].to_i
	@multiplied_hours_ago = @hours_ago*60*60
	@time = Time.now
	erb :hours_ago
end



