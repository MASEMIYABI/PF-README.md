class AddPhoneNumberToShop < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :phonenumber, :string
  end
end
