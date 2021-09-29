class Item < ApplicationRecord
  has_many :cart_items,dependent: :destroy
  belongs_to :genre
  attachment :image

  has_many :order_details
  def add_tax_price#持ち帰り税込表示
    (self.price * 1.08).round
  end

end
