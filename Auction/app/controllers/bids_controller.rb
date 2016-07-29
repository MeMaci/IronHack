class BidsController < ApplicationController
	def index
		@bids = Bid.all
	end

	def new
		@product = Product.find_by(params[:id])
		@bid = @product.bids.new	
	end

	def create
		@product = Product.find_by(params[:id])
		@bid = @product.bids.new(params.require(:bid).permit(:amount, :user_id, :product_id))		
		if @bid.save
			redirect_to auction_home_path(@user), notice: "THANK YOU #{@user}"
		else
			render 'new'
		end

	end

end

		