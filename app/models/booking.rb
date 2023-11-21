class Booking < ApplicationRecord
  belongs_to :kitchen, :user
  # owner
  belongs_to :owner, through: :kitchens, source: :users
  validates :total_price, :date, presence: true
end
