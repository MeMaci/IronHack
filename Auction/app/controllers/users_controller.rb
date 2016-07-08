class UsersController < ApplicationController
	def show
		begin
			@user = User.find(params[:id])
		rescue ActiveRecord::RecordNotFound
			# redirect_to '/projects' or
			render 'no_project_found'
		end
	
	end

	def new
		@user = User.new
	end
	
	def create
		@user = User.new(
			name: params[:user][:name],
			email: params[:user][:email]
			)
		@user.save

		redirect_to new_user_product_path(@user)
	end

end
