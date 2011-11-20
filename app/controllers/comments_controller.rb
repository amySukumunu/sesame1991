class CommentsController < ApplicationController
	def create
    	@micropost = Micropost.find(params[:micropost_id])
    	@comment = @micropost.comments.create(params[:comment])
    	redirect_to micropost_path(@micropost)
  end
end
