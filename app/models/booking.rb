class Booking < ApplicationRecord
  belongs_to :kitchen
  belongs_to :user
  # owner
  # belongs_to :owner, through: :kitchens, source: :users
  # validates :total_price, presence: true
end
