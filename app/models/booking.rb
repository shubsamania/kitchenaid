class Booking < ApplicationRecord
  belongs_to :kitchen
  belongs_to :user
  has_one :review, dependent: :destroy
  # owner
  # belongs_to :owner, through: :kitchens, source: :users
  # validates :total_price, presence: true
  def calculate_days_left
    current = DateTime.now
    end_date = self.end_date
    days_left = (end_date - current).to_i
    return days_left
  end

end
