class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :asc).limit(10)	
	end

	def show
		if @project = Project.find_by(id: params[:id])
			render 'show'
		else
			render 'no_project_found'
		end
	end
end
