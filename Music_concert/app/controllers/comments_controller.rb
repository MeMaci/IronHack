class CommentsController < ApplicationController
	def new
		@concert = Concert.find_by(params[:id])
		@comment = @concert.comments.new
	end

	def create
		@concert = Concert.find(params[:concert_id])
		@comment = @concert.comments.new(params.require(:comment).permit(:comment))	
			if @comment.save
				redirect_to concert_path(@concert), notice: "Entry was created successfully"
			else
				render 'new'
			end
	end

end
