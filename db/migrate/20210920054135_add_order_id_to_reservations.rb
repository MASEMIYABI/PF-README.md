class AddOrderIdToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :order_id, :integer
  end
end
