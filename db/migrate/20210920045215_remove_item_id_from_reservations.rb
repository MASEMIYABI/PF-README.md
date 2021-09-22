class RemoveItemIdFromReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :item_id, :reservations
  end
end
