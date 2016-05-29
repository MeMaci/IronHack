require "sinatra" 
require_relative "lib/calculator"

calculate = Calculator.new

get "/" do
  # @result = IO.read("public/result.txt")
 	erb(:home)	
end

post "/calculate" do

  @operation = params["operation"] # => "add", "subtract", "divide", "multiply"

  @first = params[:first_number].to_f
  @second = params[:second_number].to_f

  if operation == "add"
      @calculated_value== calculate.calculate_add(first, second)
  elsif operation == "subtract"
      @calculated_value== calculate.calculate_subtract(first, second)
  elsif operation == "divide"
      @calculated_value== calculate.calculate_divide(first, second)
  elsif operation == "multiply"
      @calculated_value== calculate.calculate_multiply(first, second)
  end
    erb(:calculated_value)      
end

get "/save" do
  result = params["calculated_value"]
  IO.write("public/result.txt", result)
  redirect to("/")
  erb(:/)

end

post "/add" do
  result = params["calculated_value"]
  IO.write("public/result.txt", result)
  redirect to("/")
  erb(:/)
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
