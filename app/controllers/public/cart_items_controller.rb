class Public::CartItemsController < ApplicationController
  def index
    @cart_items = current_customer.cart_items.all
    @total_price = @cart_items.inject(0) { |sum, item| sum + item.sum_of_price }
    @cart_item=CartItem.new
  end

  def edit
  end

  def destroy
  end

  def create
  end

  def reset
  end

end
