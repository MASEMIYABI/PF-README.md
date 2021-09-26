class AddTimeToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :date, :datetime
    add_column :orders, :month, :datetime
    add_column :orders, :time, :datetime
  end
end
