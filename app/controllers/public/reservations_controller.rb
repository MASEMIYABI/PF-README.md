class Public::ReservationsController < ApplicationController
  def create
     @reservation = current_customer.reservations.create(reservation_params)
     redirect_to root_path notice:"予約が完了しました"
　end

　private

　def reservation_params
    params.require(:reservation).permit(:time, :date, :status,:item_id)
  end
end
