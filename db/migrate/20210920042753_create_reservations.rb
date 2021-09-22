class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.datetime :time
      t.datetime :date
      t.integer :customer_id
      t.integer :item_id
      t.integer :status

      t.timestamps
    end
  end
end
