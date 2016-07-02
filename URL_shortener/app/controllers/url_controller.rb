class UrlController < ApplicationController
	def home
		@url = Url.new
	end
	def new
  		@url = Url.new
  	end
  	def create
  		
  	end
end
