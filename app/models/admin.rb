class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  attachment :image
  has_many :items, dependent: :destroy
  has_many :cards, dependent: :destroy
  has_many :shops,dependent: :destroy
  has_many :product_comments,dependent: :destroy
end
