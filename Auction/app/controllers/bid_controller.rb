class BidController < ApplicationController
	def create
		@product = Product.find(params[:id])
		@bid = @product.bids.new(params.require(:bid).permit(:user_id, :product_id, :amount))		
		if @bid.save
			redirect_to auction_home_path(@user), notice: "THANK YOU #{@user.name}"
		else
			render 'new'
		end

	end

end

		