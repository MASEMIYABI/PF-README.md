class Shop < ApplicationRecord
  attachment :image
  belongs_to :items
  belongs_to :admin
end
