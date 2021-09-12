class Genre < ApplicationRecord
  validates :genre_name ,presence: true

  accepts_attachments_for :image, attachment: :image

  validates :genre_name, presence: true

end
