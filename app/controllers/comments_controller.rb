class CommentsController < ApplicationController
    def create
      @comment=Comment.new(comment_params)
      @comment.writer= 
      if current_user
        current_user.email
      else
        current_host.email
      end
      @comment.host_id=params[:host_id]
      @comment.save
  
      redirect_to :back
    end
  
    def destroy
    end
  
    def comment_params
      params.require(:comment).permit(:id, :content, :writer)
    end
  
  end
  