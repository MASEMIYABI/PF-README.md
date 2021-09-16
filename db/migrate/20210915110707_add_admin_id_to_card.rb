class AddAdminIdToCard < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :admin_id, :integer
  end
end
