class CommentsController < ApplicationController
	  def create
	  	 
		@listing = Listing.find(params[:listing_id])
		@comment = @listing.comments.create(comment_params.merge(user_id: current_user.id))  
	 	#@comment = @listing.comments.create(params[:comment].permit(:title, :message, :listing_id, :user_id))
		redirect_to listing_path(@listing) #redirect same pg itself
	end

	def destroy # deleting via user existence

		@comment = current_user.comments.find(params[:id])
		@comment.destroy

		redirect_back(fallback_location: root_path)
	end








	private
	def comment_params
      params.require(:comment).permit(:title, :message)
    end

end
