class AddTimeToOrderDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :order_details, :date, :datetime
    add_column :order_details, :time, :datetime
    add_column :order_details, :month, :datetime
  end
end
