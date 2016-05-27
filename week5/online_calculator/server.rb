require "sinatra" 
require_relative "lib/calculator"

calculate = Calculator.new

get "/" do
 	erb(:home)	
end

post "/calculate" do

  operation = params["operation"] # => "add", "subtract", "divide", "multiply"

  first = params[:first_number].to_i
  second = params[:second_number].to_i

  if operation == "add"
    calculate.calculate_add(first, second)
  elsif operation == "subtract"
    calculate.calculate_subtract(first, second)
  elsif operation == "divide"
     calculate.calculate_divide(first, second)
  elsif operation == "multiply"
     calculate.calculate_multiply(first, second)
  end
    erb(:home)      
end

get "/add" do
  erb(:add)
end
 post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  calculate.calculate_add(first, second)
end

get "/subtract" do
  erb(:subtract)
end
 post "/calculate_subtract" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  calculate.calculate_subtract(first, second)
end

get "/multiply" do
  erb(:multiply)
end
 post "/calculate_multiply" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  calculate.calculate_multiply(first, second)
end

get "/divide" do
  erb(:divide)
end
 post "/calculate_divide" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  calculate.calculate_divide(first, second)
end
