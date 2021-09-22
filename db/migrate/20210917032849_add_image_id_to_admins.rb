class AddImageIdToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :image_id, :string
    add_column :admins, :address, :string
    add_column :admins, :description, :text
    add_column :admins, :phone_number, :string
  end
end
