class TimeEntriesController < ApplicationController

	def destroy
		flash[:success] = "Time Entry Deleted"

		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.find(params[:id])

		#destroy dont require IF because u dont need the route the user to a nother page!
		@time_entry.destroy
		redirect_to project_time_entries_path(@project)			
	end

	def update
		#input project_id time_entry_id
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.find(params[:id])
		# I CAN COMMENT OUT BECAUSE WE HAVE DEFINED PRIVATE__time_entry_params = params.require(:time_entry).permit(:hours, :minutes, :date, :comment)

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
		@time_entry = @project.time_entries.new
		
	end

	def create
		#input: params[:project_id] and params[:time_entry]
		#find the project
		@project = Project.find(params[:project_id])
		# time_entry_params = params.require(:time_entry).permit(:hours, :minutes, :date)
		# time_entry_params == { hours: 1, minutes: 30, date: somedate}

		#initialize a new time_entry
		@time_entry = @project.time_entries.new(time_entry_params)

		if @time_entry.save
			# redirect_to action: index, controller: time_entry, project_id: @project_id
			# OR you can say..
			redirect_to project_time_entries_path(@project), notice: "Entry was created successfully"
		else
			render 'new'
		end
		
	end
	
	#PRIVATE creates a short_cut to time_entry_params inside of your class!
	private
		
		def time_entry_params
			params.require(:time_entry).permit(:hours, :minutes, :date)	
		end	
end
