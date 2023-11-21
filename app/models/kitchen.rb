class Kitchen < ApplicationRecord
  has_many :bookings, dependent: :destroy
  validates :name, :price, :description, presence: true
end
