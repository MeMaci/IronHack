class ProjectsController < ApplicationController
	def index
		@projects = Project.last_created_projects(15)
	end
	def new
		@project = Project.new
	end
	def create
		@project = Project.new(
			name: params[:project][:name],
			description: params[:project][:description]
			)
		@project.save

		redirect_to '/projects'
	end
	def show
		begin
			@project = Project.find(params[:id])
		rescue ActiveRecord::RecordNotFound
			# redirect_to '/projects' or
			render 'no_project_found'
		end
		
		# or u can use find_by...
		# @project = Project.find_by(id:params[:id])
		# unless @project
		# 	render 'no_project_found'
		# end
	end
end
 
