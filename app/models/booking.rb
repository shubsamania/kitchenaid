class Booking < ApplicationRecord
  belongs_to :kitchen
  validates :total_price, :date, presence: true
  validates :rating, inclusion: { in: 0..5, allow_nil: false }
  validates :rating, numericality: { only_integer: true }
end
