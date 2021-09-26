class Order < ApplicationRecord
belongs_to :customer
has_many :reservation,dependent: :destroy
has_many :order_details,dependent: :destroy
validates :month, presence: true
end
