class Shop < ApplicationRecord
  attachment :image
  belongs_to :items
end
