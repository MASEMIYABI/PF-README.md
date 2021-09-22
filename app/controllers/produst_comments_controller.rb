class ProdustCommentsController < ApplicationController

  def new
    @comment = ProdustComment.new
  end

  def create
    @admins = Admin.all
    @comment = ProdustComment.new(produst_comment_params)
    if @comment.save
      redirect_to product_comment_path
    else
      render :new
    end
  end
  private
  def produst_comment_params
    params.require(:produst_comment).permit(:comment,:evaluation,:rate)
  end
end
