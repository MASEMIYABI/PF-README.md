class Public::ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def show
    @items = Item.all
    @item = Item.find(params[:id])
  end

  def new
  end

  def destroy
  end

  def edit
  end
end
