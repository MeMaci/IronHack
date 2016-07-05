class TimeEntriesController < ApplicationController
	def update
		#input project_id time_entry_id
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.find(params[:id])
		time_entry_params = params.require(:time_entry).permit(:hours, :minutes, :date, :comment)

		if @time_entry.update(time_entry_params)
			# redirect_to action: index, controller: time_entry, project_id: @project_id
			# OR you can say..
			redirect_to project_time_entries_path(@project)
		else
			render 'edit'
		end
		
	end

	def edit
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.find(params[:id])	
	end

	def index
		@project = Project.find(params[:project_id])
		@time_entries = @project.time_entries
	end
	def new
		#find the project
		@project = Project.find(params[:project_id])
		#store in a new instans variable
		@time_entry = @project.time_entries.create
		
	end

	def create
		#input: params[:project_id] and params[:time_entry]
		@project = Project.find(params[:project_id])
		time_entry_params = params.require(:time_entry).permit(:hours, :minutes, :date)
		# time_entry_params == { hours: 1, minutes: 30, date: somedate}

		@time_entry = @project.time_entries.new(params[time_entry_params])

		if @time_entry.save
			# redirect_to action: index, controller: time_entry, project_id: @project_id
			# OR you can say..
			redirect_to project_time_entries_path(@project)
		else
			render 'new'
		end
		
	end


	# def create...IGNORE THIS
	# 	find the project
	# 	@project = Project.find(params[:id])
	# 	initialize a new time entry
	# 	@time_entry = @project.time_entries.create
	# 	save the time entry
	# 	@time_entry.save	
	# end
end
