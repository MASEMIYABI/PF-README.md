class ProdustComment < ApplicationRecord
  belongs_to :customer
  belongs_to :admin
  validates :rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1}, presence: true
end
