class Booking < ApplicationRecord
  belongs_to :kitchen, :user
  validates :total_price, :date, presence: true
end
