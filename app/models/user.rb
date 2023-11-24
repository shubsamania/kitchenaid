class User < ApplicationRecord
  # Owner
  has_many :bookings_as_owner, through: :kitchens, source: :bookings
  # User
  has_many :bookings
  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
