class Public::OrdersController < ApplicationController
  def new
    @order = Order.new
    @customer = current_customer
  end

  def confirm
    @order = Order.new(orders_params)
    @customer = current_customer
    @cart_items = current_customer.cart_items
    @order.total_payment = total_payment(@cart_items)
  end

  def create
     @order = Order.new(orders_params)
     @cart_items = current_customer.cart_items
     @order.customer_id = current_customer.id
     @order.total_payment = total_payment(@cart_items)
      if  @order.save
        @cart_items.each do |cart_item|
        @order_detail = OrderDetail.new
        @order_detail.order_id = @order.id
        @order_detail.item_id = cart_item.item.id
        @order_detail.quantity = cart_item.quantity
        @order_detail.save
          end
        redirect_to complete_orders_path
      else
        render :new
      end
  end


  def index
    @orders = Order.all
  end

  private
  def orders_params
    params.require(:order).permit(:customer_id,:payment_method, :total_payment,:month,:time)
  end

  def total_payment(cart_items)
    sum = 0
    cart_items.each do |cart_item|
      sum += (cart_item.item.price) * cart_item.quantity
    end
    sum.to_i
  end
end
