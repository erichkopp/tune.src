class CommentsController < ApplicationController

	def create
		@tune = Tune.find(params[:tune_id])
	  @comment = @tune.comments.build(comment_params)
	  @comment.user_id = current_user.id

	  if @comment.save
	    redirect_to @tune
	  else
	    flash[:alert] = "Try again."
	    render root_path
	  end
	end

	def destroy
		@tune = Tune.find(params[:tune_id])
	  @comment = Comment.find(params[:id])

	  @comment.destroy
	  redirect_to @tune
	end



	private

	def comment_params
	  params.require(:comment).permit(:content)
	end

end
