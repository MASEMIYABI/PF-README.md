class CreateProdustComments < ActiveRecord::Migration[5.2]
  def change
    create_table :produst_comments do |t|
      t.integer :admin_id,nill: false
      t.integer :customer_id, null: false
      t.float :rate, null: false, default: 0
      t.text :comment, null: false

      t.timestamps
    end
  end
end
