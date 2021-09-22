class Public::ShopsController < ApplicationController
  def index
    @shops = Shop.all
    @admins = Admin.all
  end

  def show
    @items = Item.all
    @item = Item.find(params[:id])
  end

  def new
    @shop = Shop.new
  end

  def create
    @admins = Admin.all
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to shops_path
    else
      render :index
    end
  end

  def destroy
  end

  def edit
  end

  private

  def shop_params
    params.require(:shop).permit(:name,:evaluation)
  end
end
