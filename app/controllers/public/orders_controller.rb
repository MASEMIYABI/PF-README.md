class Public::OrdersController < ApplicationController
  def new
    @order = order.new
    @customer = current_customer
  end

  def index
  end
end
