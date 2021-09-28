class ProdustCommentsController < ApplicationController

  def index
    @comments = ProdustComment. all
  end

  def new
    @comment = ProdustComment.new
  end

  def create
    @admins = Admin.all
    @comment = ProdustComment.new
    if @comment.save
      redirect_to produst_comments_path
    else
      render :new
    end
  end
  
  private
  
  def produst_comment_params
    params.require(:produst_comment).permit(:comment,:admin_id)
  end
end
