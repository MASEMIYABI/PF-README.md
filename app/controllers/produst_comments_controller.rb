class ProdustCommentsController < ApplicationController

  def index
    @comments = ProdustComment. all
  end

  def new
    @comment = ProdustComment.new
  end

  def create
    @comment = ProdustComment.new(produst_comment_params)
    if @comment.save
      redirect_to produst_comments_path
    else
      render :new
    end
  end

  private

  def produst_comment_params
    params.require(:produst_comment).permit(:comment,:customer_id)
  end
end
