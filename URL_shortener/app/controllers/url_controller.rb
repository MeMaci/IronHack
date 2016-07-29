class UrlController < ApplicationController
	def home
		@url = Url.new
	end
	def show

		@url = Url.find(params[:id])
		
	end

  	def create
  		my_url = Url.create(
  			original_url: params[:url][:original_url],
  			shortlink: Url.generate_shortlink(5)
  			)
  		redirect_to "/urls/#{my_url.id}"
  	end

  	def index
  		url = Url.find_by(shortlink: params[:shortlink])
  		if url
  			redirect_to url.original_url
  		end
  	end
end
