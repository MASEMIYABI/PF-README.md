class Admins::AdminsController < ApplicationController
  def show
    @admins = current_admin
  end

  def edit
   @admins = current_admin
  end

  def update
    @admins = current_admin
    if @admins.update(admin_params)
     redirect_to admins_admins_path
    else
     render :edit
    end
  end

  private

  def admin_params
    params.require(:admin).permit(:name, :genre_id, :image, :description, :phone_number, :address)
  end
end
