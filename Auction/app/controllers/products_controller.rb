class ProductsController < ApplicationController
	def new
		@user = User.find(params[:user_id])
		@product = @user.products.new
	end

	def index
		@user = User.find(params[:user_id])
		@products = @user.products.all
	end
	def show

		@user = User.find(params[:user_id])
		@product = Product.find(params[:id])

	end

	def create
		@user = User.find(params[:user_id])
		@product = @user.products.new(product_params)
		if @product.save
			redirect_to user_products_path(@user), notice: "Product was created sucessfully"
		else
			render 'new'
		end
		
	end
	def destroy
		flash[:sucess] = "Product Deleted"

		@user = User.find(params[:user_id])
		@product = @user.products.find(params[:id])

		@product.destroy
		redirect_to user_products_path(@user)
		
	end

	def update
		@user = User.find(params[:user_id])
		@product = @user.products.find(:id)

		if @product.update(product_params)
			redirect_to user_products_path(@user)
		else
			render 'edit'
		end
		
	end

	private

	def product_params
		params.require(:product).permit(:title, :description, :deadline)
	end

end
