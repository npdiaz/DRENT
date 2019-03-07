class Drone < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  has_many :photos
  has_many :reviews, through: :bookings

  validates :price, numericality: { only_integer: true, greater_than: 0}
  validates :price, :title, presence: true
  accepts_nested_attributes_for :photos

  def average_ratings
    total_rating = 0
    self.reviews.each do |rev|
    total_rating += rev.rating
     end
    return 0 if self.reviews.empty?
    return total_rating / self.reviews.length
  end
end
