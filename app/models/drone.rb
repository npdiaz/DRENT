class Drone < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  has_many :photos

  validates :price, numericality: { only_integer: true, greater_than: 0}
  validates :price, :title, presence: true
end
