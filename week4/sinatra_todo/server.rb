require_relative("lib/task.rb")
require_relative("lib/todo_list.rb")

require "sinatra" 
require "sinatra/reloader" if development?
require 'pry'

enable(:sessions)

task1 = Task.new("Buy the milk")
task2 = Task.new("Wash the car")
task3 = Task.new("Make my todo list into a web app")

todo_list = TodoList.new("Josh")

todo_list.add_task(task1)
todo_list.add_task(task2)
todo_list.add_task(task3)

get "/" do
	@list = todo_list.tasks
	erb :home
end

get "/new_task" do
	erb :new_task
end

post "/created_task" do
	@tasks = params[:task]
	todo_list.add_task(Task.new(@tasks))
	redirect to("/")
end

get "/completed_task/:id" do
	id = params[:id].to_i
	@task = todo_list.find_task_by_id(id)
	@task.complete!
	redirect to("/")
end

