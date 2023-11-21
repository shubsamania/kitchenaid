class Review < ApplicationRecord
  validates :content, :rating, presence: true
  belongs_to :booking
end
