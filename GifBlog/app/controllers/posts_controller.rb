class PostsController < ApplicationController
	def destroy
		@post = Post.find(params[:id])

		@post.destroy
		redirect_to posts_path
	end
	def index
		@posts =Post.show_post
		#OR YOU CAN SIMPLY DO
		#@posts =Post.all
	end
	def new
		@post = Post.new
	end
	def create
		@post =Post.new(post_params)
		if @post.save
			#IF POST SAVES DO TO THE INDEX
			redirect_to '/posts'
			#OR redirect_to posts_path
		else
			render 'new'
		end

	end

	def show
		begin
			@post = Post.find(params[:id])
		rescue ActiveRecord::RecordNotFound
			# NOT WORKING
			render 'no_post_found'
		end	
	end

	def upvote
		@post = Post.find(params[:id])
		@post.upvote
		redirect_to post_path(@post.id)

		#OR USE SHORTCUT INCREMENT AND DECREMENT
		# @post = Post.find(params[:id])
		# @post.increment!(:nov)
		# redirect_to post_path(@post)
	end

	def downvote
		@post = Post.find(params[:id])
		@post.downvote
		redirect_to post_path(@post.id)
	end

#STRONG PARAMETERS
	private
	def post_params
		params.require(:post).permit(:title, :gif_url)
	end
end
