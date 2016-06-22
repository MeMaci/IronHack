class SiteController < ApplicationController
	# this is not called an instant method on Rails is called an Action
	def home
		render 'home'
	end

	def contact
		render 'email'	
	end
end
