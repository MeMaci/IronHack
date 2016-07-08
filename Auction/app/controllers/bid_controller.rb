class BidController < ApplicationController
	def create
		@product = Product.find_by(params[:product_id])
				
	end
end

		