class RemoveOrderIdFromReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :order_id, :integer
  end
end
