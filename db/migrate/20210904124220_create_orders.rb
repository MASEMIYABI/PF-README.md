class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :total_payment
      t.integer :payment_method,default: 0
      t.integer :status,default: 0
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
