class Admins::OrdersController < ApplicationController
    def index
       @order_lists = Order.all
    end

    def show
        @order = Order.find(params[:id])
        @order_items = @order.order_details
    end
end