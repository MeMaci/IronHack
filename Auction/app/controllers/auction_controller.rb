class AuctionController < ApplicationController
  def home
		@products = Product.all
  end
end
