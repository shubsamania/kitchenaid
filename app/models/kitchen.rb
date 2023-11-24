class Kitchen < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  validates :name, :price, :description, presence: true
  has_one_attached :photo

  def average_rating
    ratings = []
    reviews.each do |review|
      ratings << review.rating
    end
    if ratings.empty?
      "★"
    else
      sum_ratings = ratings.sum
      number_of_ratings = ratings.count
      (sum_ratings.to_f / number_of_ratings).round(1)
    end
  end
end
