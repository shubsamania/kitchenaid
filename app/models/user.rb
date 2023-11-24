class User < ApplicationRecord
  # Owner
  has_many :kitchens
  has_many :bookings_as_owner, through: :kitchens, source: :bookings
  # User
  has_many :bookings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
